-- ============================================================================
-- Environment variables + cursor theme
-- ============================================================================

-- Wayland/Qt/Gtk/Electron defaults
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("OZONE_PLATFORM", "wayland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

-- Cursor theme
hl.env("HYPRCURSOR_THEME", "Bibata-Original-Classic")
hl.env("HYPRCURSOR_SIZE", "24")
