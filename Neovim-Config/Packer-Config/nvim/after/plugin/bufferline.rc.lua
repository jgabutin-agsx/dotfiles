require("bufferline").setup({
	options = {
		mode = "tabs",
		separator_style = "padded_slant",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icons = false,
		color_icons = true,
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
