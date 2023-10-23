local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

plugins = {
	-- File system explorer
	{ "preservim/nerdtree" },

	-- Comment handling
	{ "preservim/nerdcommenter" },

	-- Status Line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", opt = true },
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		-- Linter/Formatter setup
		"mfussenegger/nvim-lint",
		"mhartington/formatter.nvim",
	},

	{
		"hrsh7th/nvim-cmp",
		tag = "v0.0.1",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-vsnip",
		},
		event = "InsertEnter",
		-- config = function()
		--   require("after/lsp_config.lua")
		-- end,
	},

	{
		-- LSP Setup
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	{
		-- Autopairs
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	-- Writing Documents
	{ "junegunn/goyo.vim" },

	-- Git wrapper
	{ "tpope/vim-fugitive" },

	-- LaTeX handling
	{ "lervag/vimtex" },

	-- Markdown Handling
	{ "godlygeek/tabular" },
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- Quarto
	{
		"quarto-dev/quarto-vim",
		requires = {
			{ "vim-pandoc/vim-pandoc-syntax" },
		},
		ft = { "quarto" },
	},

	-- Colorscheme
	{ "EdenEast/nightfox.nvim" },

	-- Jupyter Notebooks
	{
		"hkupty/iron.nvim",

		dependencies = {
			"kana/vim-textobj-user",
			"kana/vim-textobj-line",
			"GCBallesteros/vim-textobj-hydrogen",
		},
	},
}

require("lazy").setup(plugins)
