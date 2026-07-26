-- ============================================================================
-- Autostart (executa no hyprland.start)
-- ============================================================================

hl.on("hyprland.start", function()
  -- Wayland helpers
  hl.exec_cmd("hyprcursor &")                         -- cursor daemon
  hl.exec_cmd("xwayland-satellite &")                 -- Xwayland bridge
  hl.exec_cmd("hyprctl setcursor Bibata-Original-Classic 24 &")

  -- Noctalia v5 (binário: noctalia, daemon -d)
  hl.exec_cmd("noctalia &")

  -- Notification daemon
  hl.exec_cmd("swaync &")

  -- Idle / lock
  hl.exec_cmd("hypridle &")
end)
