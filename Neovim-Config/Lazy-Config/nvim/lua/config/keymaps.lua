-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- deactivate mouse
vim.opt.mouse = ""

-- leader
vim.g.mapleader = " "
-- netrw
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ctrl+c to escape
keymap.set("", "<C-c>", "<ESC>")

-- ctrl+[ to escape
keymap.set("", "<C-[>", "<ESC>")

-- move highlighted up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- centers jump half page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- do not yank with x
keymap.set("n", "x", '"_x')

-- yanks into system clipboard
keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- delete into system clipboard
keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- paste from system clipboard
keymap.set({ "n", "v" }, "<leader>p", '"+p') -- paste after cursor
keymap.set({ "n", "v" }, "<leader>P", '"+P') -- paste before cursor

-- window split and navigation
keymap.set("n", "s", "") -- unbind 's'
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)
keymap.set("n", "so", ":only<CR>", opts)
-- move between windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")
-- moving windows
keymap.set("n", "sH", "<C-w>H")
keymap.set("n", "sJ", "<C-w>J")
keymap.set("n", "sK", "<C-w>K")
keymap.set("n", "sL", "<C-w>L")

-- disable default lazyvim keymaps
-- default window navigation
keymap.del({ "n", "t" }, "<C-h>")
keymap.del({ "n", "t" }, "<C-j>")
keymap.del({ "n", "t" }, "<C-k>")
keymap.del({ "n", "t" }, "<C-l>")

-- unbind s for fugitive
vim.cmd([[
let g:nremap = {'s': ''}
let g:xremap = {'s': ''}
let g:oremap = {'s': ''}
]])

-- unbind <C-o> from jump commands
keymap.set("n", "<C-o>", "")
