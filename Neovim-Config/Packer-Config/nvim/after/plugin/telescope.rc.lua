local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<C-[>"] = "close",
			},
		},
		layout_config = {
			horizontal = {
				prompt_position = "top",
			},
		},
		sorting_strategy = "ascending",
	},
})

-- keymaps
vim.keymap.set("n", "<leader>;f", function()
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end)
vim.keymap.set("n", "<leader>;s", function()
	builtin.live_grep()
end)
vim.keymap.set("n", "\\\\", function()
	builtin.buffers()
end)
vim.keymap.set("n", "<leader>;t", function()
	builtin.help_tags()
end)
vim.keymap.set("n", "<leader>;;", function()
	builtin.resume()
end)
vim.keymap.set("n", "<leader>;e", function()
	builtin.diagnostics()
end)
