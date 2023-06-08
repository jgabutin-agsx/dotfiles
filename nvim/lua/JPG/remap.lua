-- leader
vim.g.mapleader = " "
-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ctrl+c to escape
vim.keymap.set("", "<C-c>", "<ESC>")

-- ctrl+[ to escape
vim.keymap.set("", "<C-[>", "<ESC>")

-- move highlighted up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- centers jump half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- do not yank with x
vim.keymap.set("n", "x", '"_x')

-- yanks into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p') -- paste after cursor
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P') -- paste before cursor

-- nvim tree toggle
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- window split and navigation
vim.keymap.set("n", "s", "") -- unbind 's'
vim.keymap.set("n", "ss", ":split<CR>")
vim.keymap.set("n", "sv", ":vsplit<CR>")
vim.keymap.set("n", "so", ":only<CR>")
-- move between windows
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sl", "<C-w>l")
-- moving windows
vim.keymap.set("n", "sH", "<C-w>H")
vim.keymap.set("n", "sJ", "<C-w>J")
vim.keymap.set("n", "sK", "<C-w>K")
vim.keymap.set("n", "sL", "<C-w>L")

-- unbind s for fugitive
vim.cmd([[
let g:nremap = {'s': ''}
let g:xremap = {'s': ''}
let g:oremap = {'s': ''}
]])
