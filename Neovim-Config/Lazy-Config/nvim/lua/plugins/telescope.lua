local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  -- telescope
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>;f",
        function() builtin.find_files() end,
        desc = "Find File",
      },
    {
      "<leader>;s",
      function()
        builtin.live_grep()
      end,
      desc = "Live Grep",
    },
    {
      "\\\\",
      function()
        builtin.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>;t",
      function()
        builtin.help_tags()
      end,
      desc = "Help Tags",
    },
    {
      "<leader>;;",
      function()
        builtin.resume()
      end,
      desc = "Resume",
    },
    {
      "<leader>;e",
      function()
        builtin.diagnostics()
      end,
      desc = "Diagnostics",
    },
    { "<leader>ff", false },
    { "<leader>fF", false },
    { "<leader><space>", false },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        i = {
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          ["<esc>"] = actions.close,
          ["<C-c>"] = actions.close,
        },
      },
    },
  },
}
