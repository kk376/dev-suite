import { Extension } from 'resource:///org/gnome/shell/extensions/extension.js';
import * as Screenshot from 'resource:///org/gnome/shell/ui/screenshot.js';
import GLib from 'gi://GLib';
import Gio from 'gi://Gio';

export default class ScreenshotClipboardOnlyExtension extends Extension {
    enable() {
        this._origResolve = Screenshot.ScreenshotService.prototype._resolveRelativeFilename;
        Screenshot.ScreenshotService.prototype._resolveRelativeFilename = function* (filename) {
            const base = filename.replace(/\.png$/, '');
            const tmpDir = '/tmp';
            yield Gio.File.new_for_path(GLib.build_filenamev([tmpDir, `${base}.png`]));
            for (let idx = 1; ; idx++) {
                yield Gio.File.new_for_path(GLib.build_filenamev([tmpDir, `${base}-${idx}.png`]));
            }
        };
    }

    disable() {
        if (this._origResolve) {
            Screenshot.ScreenshotService.prototype._resolveRelativeFilename = this._origResolve;
            this._origResolve = null;
        }
    }
}
