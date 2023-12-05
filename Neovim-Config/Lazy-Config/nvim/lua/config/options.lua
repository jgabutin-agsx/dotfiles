-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.wrap = false
opt.backspace = "start,eol,indent"

opt.autoindent = true
opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true

opt.cursorline = true
opt.termguicolors = true

opt.scrolloff = 8

-- opt.colorcolumn = "80"

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node%_modules/*" })

-- spell check
opt.spelllang = "en_us"
opt.spell = true
