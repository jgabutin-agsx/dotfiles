-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- file search
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or, branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- -- colorscheme
	-- use({
	-- 	"olimorris/onedarkpro.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme onedark")
	-- 	end,
	-- })
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	-- syntax highlighting
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	-- file explorer
	use("nvim-tree/nvim-tree.lua")
	-- icons
	use("nvim-tree/nvim-web-devicons")
	-- indentation guide
	use("lukas-reineke/indent-blankline.nvim")

	-- LSP UIs
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
	})

	-- Snippet
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	-- Statusline
	use("hoob3rt/lualine.nvim")
	-- vscode-like pictograms
	use("onsails/lspkind-nvim")
	-- nvim-cmp source for buffer words
	use("hrsh7th/cmp-buffer")
	-- Completion source for file system paths
	use("hrsh7th/cmp-path")
	-- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/cmp-nvim-lsp")
	-- Completion
	use("hrsh7th/nvim-cmp")
	-- configures LSP servers
	use("neovim/nvim-lspconfig")
	-- manages/installs LSP servers
	use("williamboman/mason.nvim")
	-- bridges gap between mason & lspconfig
	use("williamboman/mason-lspconfig.nvim")
	use("jay-babu/mason-null-ls.nvim")
	-- brackets auto pair
	use("windwp/nvim-autopairs")
	-- auto closes HTML tags
	use("windwp/nvim-ts-autotag")
	-- tabs/buffer labels
	use("akinsho/nvim-bufferline.lua")
	-- highlights hexcode with indicated color
	use("norcalli/nvim-colorizer.lua")
	-- commenting with gc
	use("numToStr/Comment.nvim")
	-- jsx commenting with gc
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- additional typescript functionality (updates imports)
	use("jose-elias-alvarez/typescript.nvim")
	-- configures formatters & linters
	use("jose-elias-alvarez/null-ls.nvim")
	-- formatter (prettier)
	use("MunifTanjim/prettier.nvim")

	-- surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	-- markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Git related plugins
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")
	use("lewis6991/gitsigns.nvim")
end)
