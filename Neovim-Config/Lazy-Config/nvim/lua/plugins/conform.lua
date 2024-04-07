return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            javascript = { "prettierd" },
            javascriptreact = { "prettierd" },
            typescript = { "prettierd" },
            typescriptreact = { "prettierd" },
            markdown = { "prettierd" },
            -- go = { "goimports", "gofumpt" },
            python = { "black" },
            xml = { "xmllint" }, -- reactivate when able to configure
            html = { "prettierd" },
        },
        formatters = {
            prettierd = {
                command = "prettierd",
                stdin = true,
                env = {
                    PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/prettier-config/prettier.config.js"),
                },
            },
            xmllint = {
                env = {
                    XMLLINT_INDENT = "    ",
                },
            },
        },
    },
}
