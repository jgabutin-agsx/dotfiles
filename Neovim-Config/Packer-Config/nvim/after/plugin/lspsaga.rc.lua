local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	server_filetype_map = {
		typescript = "typescript",
	},
	ui = {
		-- Currently, only the round theme exists
		theme = "round",
		-- This option only works in Neovim 0.9
		title = true,
		-- Border type can be single, double, rounded, solid, shadow.
		border = "rounded",
		winblend = 0,
		expand = "",
		collapse = "",
		preview = " ",
		code_action = "💡",
		diagnostic = "🐞",
		incoming = " ",
		outgoing = " ",
		hover = " ",
		kind = {},
		-- CATPPUCCIN
		-- colors = require("catppuccin.groups.integrations.lsp_saga").custom_colors(),
		-- kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga finder<CR>", opts)
vim.keymap.set("n", "gt", "<Cmd>Lspsaga peek_type_definition<CR>", opts)
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "<leader>sl", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "<leader>sb", "<Cmd>Lspsaga show_buf_diagnostics<CR>", opts)
