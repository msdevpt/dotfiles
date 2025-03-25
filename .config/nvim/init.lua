vim.cmd("set expandtab")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
  'mawkler/modicator.nvim',
  dependencies = 'mawkler/onedark.nvim', -- Add your colorscheme plugin here
  init = function()
    -- These are required for Modicator to work
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
  end}
}

local opts = {}

require("lazy").setup(plugins, opts)

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

require('lualine').setup()

require('modicator').setup({
  -- Warn if any required option is missing. May emit false positives if some
  -- other plugin modifies them, which in that case you can just ignore
  show_warnings = false,
  highlights = {
    -- Default options for bold/italic
    defaults = {
      bold = false,
      italic = false,
    },
    -- Use `CursorLine`'s background color for `CursorLineNr`'s background
    use_cursorline_background = true,
  },
  integration = {
    lualine = {
      enabled = true,
      -- Letter of lualine section to use (if `nil`, gets detected automatically)
      mode_section = nil,
      -- Whether to use lualine's mode highlight's foreground or background
      highlight = 'bg',
    },
  },
})
