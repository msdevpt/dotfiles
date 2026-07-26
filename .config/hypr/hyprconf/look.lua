-- ============================================================================
-- Look & feel (general, decoration, animations, dwindle, xwayland, ecosystem)
-- Cores em fallback — o Noctalia aplica tema runtime via hyprctl.
-- ============================================================================

hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 2,
    border_size = 1,
    layout = "dwindle",
    resize_on_border = true,
    allow_tearing = false,

    col = {
      active_border   = { colors = {"rgba(cba6f7ff)", "rgba(94e2d5ff)"}, angle = 45 },
      inactive_border = "rgba(6c7086ff)",
    },
  },

  decoration = {
    rounding        = 8,
    active_opacity  = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled      = true,
      range        = 2,
      render_power = 2,
      color        = 0xee1a1a1a,
    },

    blur = {
      enabled   = true,
      size      = 3,
      passes    = 1,
      vibrancy  = 0.16,
    },
  },

  animations = {
    enabled = true,
  },

  dwindle = {
    preserve_split = true,
  },

  xwayland = {
    force_zero_scaling = true,
  },

  cursor = {
    hide_on_key_press = true,
  },

  ecosystem = {
    no_update_news = true,
    no_donation_nag = true,
  },
})

-- Bezier curves
hl.curve("default", { type = "bezier", points = { {0.4, 0.0}, {0.2, 1.0} } })
hl.curve("overshoot", { type = "bezier", points = { {0.13, 0.99}, {0.29, 1.33} } })

-- Animações
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "overshoot" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "default" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "default" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "default" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "default", style = "fade" })
