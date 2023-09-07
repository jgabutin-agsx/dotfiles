local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
  return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return
end

-- For gopls
local util = require("lspconfig/util")

-- DIAGNOSTIC SIGNS (added from trouble.nvim inspiration)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- FOR VIRTUAL TEXT PREFIX (added from trouble.nvim inspiration)
local function format(diagnostic)
  if diagnostic.severity == vim.diagnostic.severity.ERROR then
    return string.format("  %s", diagnostic.message)
  elseif diagnostic.severity == vim.diagnostic.severity.WARN then
    return string.format("  %s", diagnostic.message)
  elseif diagnostic.severity == vim.diagnostic.severity.HINT then
    return string.format(" %s", diagnostic.message)
  elseif diagnostic.severity == vim.diagnostic.severity.INFO then
    return string.format("  %s", diagnostic.message)
  end

  return diagnostic.message
end

vim.diagnostic.config({ virtual_text = { prefix = "", spacing = 2, source = false, format = format } })

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  vim.keymap.set("n", "<space>f", function()
    vim.lsp.buf.format({ async = true })
  end)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- TypeScript (replaced tsserver.setup)
typescript.setup({
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = lsp_flags,
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
  },
})

nvim_lsp["html"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
  configurationSection = { "html" }, -- "css", "javascript", "javascriptreact", "typescript", "typescriptreact"
  embeddedLanguages = {
    css = true,
    javascript = true,
    typescript = true,
  },
  provideFormatter = true,
})

nvim_lsp["cssls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
})

nvim_lsp["tailwindcss"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
})

nvim_lsp["lua_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
  settings = {
    -- custom settings for lua
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})

nvim_lsp["emmet_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
  filetypes = {
    -- "typescript",
    -- "typescriptreact",
    -- "javascript",
    -- "javascriptreact",
    "html",
    "css",
    "sass",
    "scss",
    "less",
    "svelte",
  },
})

nvim_lsp.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})
