-- ============================================================================
-- Keybinds Noctalia (espelhadas de ~/.config/niri/config.kdl)
-- Noctalia v5 IPC: `noctalia msg <comando>`
-- Docs:  https://docs.noctalia.dev/v5/compositor-settings/hyprland/
-- ============================================================================

local mainMod = "SUPER"
local ipc     = "noctalia msg "

-- ------------------------------------------------------------------
-- Launcher / shell (Noctalia v5)
-- ------------------------------------------------------------------

-- Launcher: SUPER + Space
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))

-- Control Center: SUPER + S
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))

-- Settings: SUPER + comma
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))

-- Window switcher: Alt + Tab
hl.bind("ALT + TAB", hl.dsp.exec_cmd(ipc .. "window-switcher"), { locked = true })

-- Session menu: SUPER + X
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(ipc .. "panel-open session"))

-- Wallpaper panel: SUPER + W
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(ipc .. "panel-open wallpaper"))

-- Random wallpaper: SUPER + Shift + W
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(ipc .. "wallpaper-random"))

-- Lock: SUPER + L
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(ipc .. "session lock"))

-- Lock + suspend: SUPER + Ctrl + S
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd(ipc .. "session lock-and-suspend"))

-- Logout: SUPER + Shift + Q
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(ipc .. "session logout"))

-- Power off: SUPER + Shift + X
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd(ipc .. "session shutdown"))

-- Reboot: SUPER + Ctrl + X
hl.bind(mainMod .. " + CTRL + X", hl.dsp.exec_cmd(ipc .. "session reboot"))

-- DPMS off: SUPER + Shift + P
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(ipc .. "dpms-off"))

-- DPMS on: SUPER + Ctrl + P
hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd(ipc .. "dpms-on"))

-- ------------------------------------------------------------------
-- Apps
-- ------------------------------------------------------------------

-- Ghostty: SUPER + Return
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("ghostty"))

-- Alacritty: SUPER + T
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("alacritty"))

-- Zen Browser: SUPER + Z
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("flatpak run app.zen_browser.zen --new-window"))

-- Thunar (file manager): SUPER + E
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))

-- Fuzzel (fallback launcher): SUPER + grave
hl.bind(mainMod .. " + grave", hl.dsp.exec_cmd("fuzzel"))

-- ------------------------------------------------------------------
-- Window management
-- ------------------------------------------------------------------

-- Close window: SUPER + Q
--hl.bind(mainMod .. " + Q", hl.dsp.kill_active())

-- Fullscreen: SUPER + F
--hl.bind(mainMod .. " + F", hl.dsp.fullscreen())

-- Pseudo: SUPER + P
--hl.bind(mainMod .. " + P", hl.dsp.pseudo())

-- Toggle floating: SUPER + V
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- ------------------------------------------------------------------
-- Focus (equivalente a Niri focus-column-left/right/up/down)
-- ------------------------------------------------------------------

-- SUPER + Left
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
-- SUPER + Right
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
-- SUPER + Up
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
-- SUPER + Down
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Cycle next/prev: SUPER + Tab
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd("hyprctl dispatch cyclenext"))
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.exec_cmd("hyprctl dispatch cycleprev"))

-- ------------------------------------------------------------------
-- Move windows
-- ------------------------------------------------------------------

-- SUPER + Shift + Left
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
-- SUPER + Shift + Right
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
-- SUPER + Shift + Up
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
-- SUPER + Shift + Down
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Mouse: SUPER + Button1 move / SUPER + Button3 resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- ------------------------------------------------------------------
-- Workspaces
-- ------------------------------------------------------------------

-- Switch to workspace 1..10: SUPER + 1..9, 0
for i = 1, 9 do
  hl.bind(mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to workspace 1..10: SUPER + Shift + 1..9, 0
for i = 1, 9 do
  hl.bind(mainMod .. " + SHIFT + " .. tostring(i),
    hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + SHIFT + 0",
  hl.dsp.window.move({ workspace = 10 }))

-- Workspace prev/next: SUPER + U/I
hl.bind(mainMod .. " + U", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + I", hl.dsp.focus({ workspace = "e+1" }))

-- Move to prev/next: SUPER + Shift + U/I
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.window.move({ workspace = "e+1" }))

-- Mouse wheel on desktop: SUPER + wheel up/down → workspace e-1/e+1
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- ------------------------------------------------------------------
-- Multimedia (XF86) — via Noctalia IPC
-- ------------------------------------------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up 5"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down 5"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "volume-mute"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up 5"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down 5"), { locked = true, repeating = true })

-- ------------------------------------------------------------------
-- System
-- ------------------------------------------------------------------

-- Reload: SUPER + Shift + R
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))

-- Exit Hyprland: SUPER + Ctrl + E
hl.bind(mainMod .. " + CTRL + E", hl.dsp.exit())

-- ------------------------------------------------------------------
-- Screenshots (hyprshot)
-- ------------------------------------------------------------------

hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("hyprshot -m screen"))

-- ------------------------------------------------------------------
-- Power menu (legacy rofi powermenu): SUPER + M
-- Mantido como fallback complementar ao session menu
-- ------------------------------------------------------------------

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("rofi -show power -modi power:$HOME/.config/rofi/powermenu.sh"))

-- ------------------------------------------------------------------
-- Workspace rules (Niri-style persistence para Noctalia)
-- Workspaces 1-10 sempre em DP-2, persistent
-- ------------------------------------------------------------------

for i = 1, 10 do
  hl.workspace_rule({
    workspace = tostring(i),
    monitor   = "DP-2",
    persistent = true,
  })
end
