# Component Blueprints & Production UI Recipes

## 1. High-Performance Primary Button (React + Tailwind)

```tsx
import React from "react";

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: "primary" | "secondary" | "ghost" | "danger";
  size?: "sm" | "md" | "lg";
  isLoading?: boolean;
}

export const Button: React.FC<ButtonProps> = ({
  children,
  variant = "primary",
  size = "md",
  isLoading = false,
  disabled,
  className = "",
  ...props
}) => {
  const baseStyles =
    "inline-flex items-center justify-center font-medium rounded-lg transition-all duration-150 active:scale-[0.98] focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none disabled:active:scale-100 select-none";

  const sizeStyles = {
    sm: "px-3 py-1.5 text-xs gap-1.5",
    md: "px-4 py-2 text-sm gap-2",
    lg: "px-5 py-2.5 text-base gap-2.5",
  };

  const variantStyles = {
    primary:
      "bg-primary text-primary-foreground hover:bg-primary-hover shadow-sm focus-visible:ring-primary",
    secondary:
      "bg-surface text-text-primary border border-border hover:bg-surface-hover focus-visible:ring-border-strong",
    ghost:
      "bg-transparent text-text-primary hover:bg-surface-hover focus-visible:ring-border",
    danger:
      "bg-red-600 text-white hover:bg-red-700 shadow-sm focus-visible:ring-red-500",
  };

  return (
    <button
      disabled={disabled || isLoading}
      className={`${baseStyles} ${sizeStyles[size]} ${variantStyles[variant]} ${className}`}
      {...props}
    >
      {isLoading && (
        <svg
          className="animate-spin -ml-1 mr-2 h-4 w-4 text-current"
          fill="none"
          viewBox="0 0 24 24"
        >
          <circle
            className="opacity-25"
            cx="12"
            cy="12"
            r="10"
            stroke="currentColor"
            strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"
          />
        </svg>
      )}
      {children}
    </button>
  );
};
```

## 2. Command Palette Dialog (Linear / Raycast Style)

```tsx
import React, { useState, useEffect } from "react";

export const CommandPalette: React.FC<{ isOpen: boolean; onClose: () => void }> = ({
  isOpen,
  onClose,
}) => {
  const [query, setQuery] = useState("");

  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === "k" && (e.metaKey || e.ctrlKey)) {
        e.preventDefault();
        onClose();
      }
      if (e.key === "Escape" && isOpen) {
        onClose();
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isOpen, onClose]);

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-start justify-center pt-24 px-4 bg-black/60 backdrop-blur-sm animate-fadeIn">
      <div className="w-full max-w-xl bg-slate-900 border border-slate-800 rounded-xl shadow-2xl overflow-hidden animate-scaleUp">
        <div className="flex items-center px-4 border-b border-slate-800">
          <svg className="w-5 h-5 text-slate-400 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
          </svg>
          <input
            autoFocus
            type="text"
            placeholder="Type a command or search..."
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            className="w-full py-3.5 bg-transparent text-white placeholder-slate-500 focus:outline-none text-sm"
          />
          <kbd className="px-2 py-0.5 text-xs text-slate-400 bg-slate-800 rounded border border-slate-700 font-mono">ESC</kbd>
        </div>
        <div className="p-2 max-h-80 overflow-y-auto space-y-1">
          <div className="px-3 py-2 text-xs font-semibold text-slate-500 uppercase tracking-wider">Navigation</div>
          <div className="flex items-center justify-between px-3 py-2 rounded-lg text-sm text-slate-200 hover:bg-slate-800 cursor-pointer">
            <span>Go to Dashboard</span>
            <kbd className="text-xs text-slate-500 font-mono">G D</kbd>
          </div>
        </div>
      </div>
    </div>
  );
};
```

---

## 4. Documentation Platform Layout (3-Column Architecture)

```tsx
import React from "react";

export const DocsLayout: React.FC<{
  sidebar: React.ReactNode;
  toc: React.ReactNode;
  children: React.ReactNode;
}> = ({ sidebar, toc, children }) => {
  return (
    <div className="min-h-screen bg-canvas text-text-primary">
      <div className="max-w-7xl mx-auto flex">
        {/* Left Sidebar: Navigation Hierarchy */}
        <aside className="w-64 shrink-0 hidden md:block sticky top-0 h-screen overflow-y-auto border-r border-border p-6">
          {sidebar}
        </aside>

        {/* Center: Main Reading Flow */}
        <main className="flex-1 min-w-0 px-6 py-10 lg:px-12 max-w-4xl">
          <article className="prose prose-slate dark:prose-invert max-w-none">
            {children}
          </article>
        </main>

        {/* Right Sidebar: Sticky Table of Contents */}
        <aside className="w-56 shrink-0 hidden xl:block sticky top-0 h-screen overflow-y-auto p-6 text-sm">
          <div className="font-semibold text-xs tracking-wider uppercase text-text-muted mb-4">
            On this page
          </div>
          {toc}
        </aside>
      </div>
    </div>
  );
};
```

---

## 5. Desktop Window Manager Simulator (React + State Machine)

```tsx
import React, { useState } from "react";

export interface WindowState {
  id: string;
  title: string;
  isOpen: boolean;
  isMinimized: boolean;
  zIndex: number;
  position: { x: number; y: number };
  size: { width: number; height: number };
}

export const WindowSimulator: React.FC<{
  win: WindowState;
  onFocus: (id: string) => void;
  onClose: (id: string) => void;
  children: React.ReactNode;
}> = ({ win, onFocus, onClose, children }) => {
  if (!win.isOpen || win.isMinimized) return null;

  return (
    <div
      onMouseDown={() => onFocus(win.id)}
      style={{
        zIndex: win.zIndex,
        transform: `translate(${win.position.x}px, ${win.position.y}px)`,
        width: `${win.size.width}px`,
        height: `${win.size.height}px`,
      }}
      className="absolute top-0 left-0 bg-surface border border-border rounded-xl shadow-2xl overflow-hidden flex flex-col transition-shadow"
    >
      {/* Header bar */}
      <div className="h-10 bg-surface-header border-b border-border px-4 flex items-center justify-between select-none cursor-move">
        <span className="text-xs font-semibold text-text-primary truncate">{win.title}</span>
        <div className="flex items-center space-x-2">
          <button
            onClick={(e) => { e.stopPropagation(); onClose(win.id); }}
            className="w-3.5 h-3.5 rounded-full bg-red-500 hover:bg-red-600 transition-colors"
            aria-label="Close"
          />
        </div>
      </div>

      {/* Window Body */}
      <div className="flex-1 overflow-auto p-4 bg-surface-body">
        {children}
      </div>
    </div>
  );
};
```
