vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.backspace = "start,eol,indent"

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- vim.opt.colorcolumn = "80"

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
