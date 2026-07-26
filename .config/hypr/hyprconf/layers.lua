-- ============================================================================
-- Layer rules (per Noctalia v5 docs)
-- https://docs.noctalia.dev/v5/compositor-settings/hyprland/
-- ============================================================================

-- Noctalia: bar, notification, dock, panel, attached-panel, OSD, window-switcher
hl.layer_rule({
  name        = "noctalia",
  match       = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim      = true,
  ignore_alpha = 0.5,
  blur         = true,
  blur_popups  = true,
})
