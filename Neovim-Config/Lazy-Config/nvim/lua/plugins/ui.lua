return {

  -- noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- adds border to hover
      opts.presets.lsp_doc_border = true
      -- releases cmdline from top
      opts.presets.command_palette = false
      -- makes search popup
      opts.presets.bottom_search = false
      -- suppresses 'no info' notification
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },

  -- notify
  {
    "rcarriga/nvim-notify",
    opts = {
      -- timeout = 10000,
    },
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = { left = "", right = "" },
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { { "mode", separator = { right = "" }, left_padding = 2 } },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            file_status = true, -- displays file status (readonly status, modified status)
            path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
          },
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " },
          },
          "encoding",
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          },
        },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
    },
  },

  -- dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ▄▄▄██▀▀▀██▓███    ▄████ 
   ▒██  ▓██░  ██▒ ██▒ ▀█▒
   ░██  ▓██░ ██▓▒▒██░▄▄▄░
▓██▄██▓ ▒██▄█▓▒ ▒░▓█  ██▓
 ▓███▒  ▒██▒ ░  ░░▒▓███▀▒
 ▒▓▒▒░  ▒▓▒░ ░  ░ ░▒   ▒ 
 ▒ ░▒░  ░▒ ░       ░   ░ 
 ░ ░ ░  ░░       ░ ░   ░ 
 ░   ░                 ░ 
                         
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },

  -- animate
  -- {
  --   "echasnovski/mini.animate",
  --   event = "VeryLazy",
  --   opts = function(_, opts)
  --     opts.scroll = {
  --       enable = false,
  --     }
  --   end,
  -- },
}
