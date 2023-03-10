-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- File system explorer
	use("preservim/nerdtree")

	-- Comment handling
	use("preservim/nerdcommenter")

	-- Status Line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Fuzzy finder
	use({ "junegunn/fzf", run = ":call fzf#install()" })
	use({ "junegunn/fzf.vim" })

	-- LSP Setup
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	-- Linter/Formatter setup
	use("mfussenegger/nvim-lint")
	use("mhartington/formatter.nvim")

	-- Autocompletion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	-- For vsnip users.
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- Autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Writing Documents
	use("junegunn/goyo.vim")

	-- Git wrapper
	use("tpope/vim-fugitive")

	-- LaTeX handling
	use("lervag/vimtex")

	-- Markdown Handling
	use("godlygeek/tabular")
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- Quarto
	use({
		"quarto-dev/quarto-vim",
		requires = {
			{ "vim-pandoc/vim-pandoc-syntax" },
		},
		ft = { "quarto" },
	})

	-- Colorscheme
	use("EdenEast/nightfox.nvim")

	-- Jupyter Notebooks
	use({ "hkupty/iron.nvim" })
	use({ "kana/vim-textobj-user" })
	use({ "kana/vim-textobj-line" })
	use({ "GCBallesteros/vim-textobj-hydrogen" })
end)
