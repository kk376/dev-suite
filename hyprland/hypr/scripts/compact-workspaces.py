#!/usr/bin/env python3
import json
import os
import socket
import subprocess
import sys
import time

def get_hypr_socket():
    his = os.environ.get("HYPRLAND_INSTANCE_SIGNATURE")
    xdg = os.environ.get("XDG_RUNTIME_DIR", f"/run/user/{os.getuid()}")
    if not his:
        try:
            instances = json.loads(subprocess.check_output(["hyprctl", "instances", "-j"]))
            if instances:
                his = instances[0]["instance"]
        except Exception:
            pass
    if not his:
        return None
    return f"{xdg}/hypr/{his}/.socket2.sock"

def compact_workspaces():
    try:
        clients_raw = subprocess.check_output(["hyprctl", "clients", "-j"])
        monitors_raw = subprocess.check_output(["hyprctl", "monitors", "-j"])
        clients = json.loads(clients_raw)
        monitors = json.loads(monitors_raw)
    except Exception:
        return

    active_ws_id = None
    if monitors:
        active_ws_id = monitors[0].get("activeWorkspace", {}).get("id")

    ws_windows = {}
    for c in clients:
        ws_id = c.get("workspace", {}).get("id", -1)
        addr = c.get("address")
        if ws_id > 0 and addr:
            ws_windows.setdefault(ws_id, []).append(addr)

    sorted_ws = sorted(ws_windows.keys())
    target_map = {}
    for idx, old_id in enumerate(sorted_ws, start=1):
        target_map[old_id] = idx

    max_occupied = len(sorted_ws)
    trailing_ws = max(max_occupied + 1, 2)

    lua_stmts = []

    # 1. Shift windows to eliminate any gaps
    for old_id, new_id in target_map.items():
        if old_id != new_id:
            for addr in ws_windows[old_id]:
                lua_stmts.append(f'hl.dispatch(hl.dsp.window.move({{ workspace = {new_id}, silent = true, window = "address:{addr}" }}))')

    # 2. Maintain active focus
    if active_ws_id in target_map:
        new_active = target_map[active_ws_id]
        if new_active != active_ws_id:
            lua_stmts.append(f'hl.dispatch(hl.dsp.focus({{ workspace = {new_active} }}))')

    # 3. Maintain GNOME N+1 trailing empty workspace rule
    default_lua_path = os.path.expanduser("~/.config/hypr/conf/workspaces/default.lua")
    rule_content = f'hl.workspace_rule({{\n    workspace = "{trailing_ws}",\n    persistent = true\n}})\n'
    
    current_content = ""
    if os.path.exists(default_lua_path):
        with open(default_lua_path, "r") as f:
            current_content = f.read()

    if current_content != rule_content:
        with open(default_lua_path, "w") as f:
            f.write(rule_content)
        lua_stmts.append('package.loaded["conf.workspaces.default"] = nil; package.loaded["conf.workspace"] = nil; require("conf.workspace")')

    if lua_stmts:
        lua_code = "; ".join(lua_stmts)
        subprocess.run(["hyprctl", "eval", lua_code], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def main():
    compact_workspaces()

    sock_path = get_hypr_socket()
    if not sock_path or not os.path.exists(sock_path):
        return

    try:
        client = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        client.connect(sock_path)
    except Exception:
        return

    buf = ""
    while True:
        try:
            data = client.recv(4096).decode("utf-8", errors="ignore")
            if not data:
                break
            buf += data
            while "\n" in buf:
                line, buf = buf.split("\n", 1)
                line = line.strip()
                if not line:
                    continue
                # Trigger on window close, move, open, create, or destroy
                if any(line.startswith(prefix) for prefix in [
                    "closewindow>>", "destroyworkspace>>", "movewindow>>",
                    "openwindow>>", "createworkspace>>", "focusedmon>>"
                ]):
                    time.sleep(0.08)
                    compact_workspaces()
        except Exception:
            time.sleep(0.5)

if __name__ == "__main__":
    main()
