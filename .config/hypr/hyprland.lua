-- ============================================================================
-- Hyprland config (Lua) — Noctalia v5
-- Hyprland 0.55+ (formato Lua nativo, hl.* API)
-- Base: ~/.config/niri/config.kdl (keybinds/launcher espelhadas)
-- Shell: Noctalia v5 (binário: noctalia; IPC: noctalia msg <comando>)
-- Docs:  https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua
--        https://docs.noctalia.dev/v5/compositor-settings/hyprland/
-- ============================================================================

-- Ordem importa: monitors/env/inputs/look primeiro (config base),
-- depois layer/window rules, depois keybinds, por último autostart.

require("hyprconf.monitors")
require("hyprconf.env")
require("hyprconf.inputs")
require("hyprconf.look")
require("hyprconf.layers")
require("hyprconf.windowrules")
require("hyprconf.keybinds")
require("hyprconf.keybinds-noctalia")
require("hyprconf.autostart")
