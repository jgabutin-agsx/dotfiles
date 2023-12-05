local cat_status, cat = pcall(require, "catppuccin")
if not cat_status then
  return
end

cat.setup({
  transparent_background = true,
  integrations = {
    -- did not integrate bufferline, lualine
    cmp = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    mason = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
        prefix = "icons",
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    nvimtree = true,
    telescope = true,
    treesitter = true,
  },
  -- color_overrides = {
  -- 	all = {
  -- 		surface2 = "#626880",
  -- 	},
  -- },
})

vim.cmd.colorscheme("catppuccin-frappe")
vim.api.nvim_set_hl(0, "Normal", { fg = "none", bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "none", bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "none", bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { fg = "none", bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "none", bg = "none" })
-- vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
