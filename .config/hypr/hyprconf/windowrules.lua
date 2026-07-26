-- ============================================================================
-- Window rules
-- ============================================================================

-- Zen Browser Picture-in-Picture flutuante
hl.window_rule({
  match = {
    class = "app.zen_browser.zen",
    title = "Vídeo em janela flutuante",
  },
  float = true,
})

-- Screensaver fullscreen
hl.window_rule({
  match = { title = "Omarchy Screensaver" },
  fullscreen = true,
})

-- Noctalia settings flutuante
hl.window_rule({
  match = { class = "dev.noctalia.Noctalia" },
  float = true,
  size   = { 1080, 920 },
})
