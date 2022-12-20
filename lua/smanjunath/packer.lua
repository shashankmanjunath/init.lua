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
	use("nvim-lualine/lualine.nvim")

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

	-- Colorscheme
	use({
		"bluz71/vim-nightfly-colors",
		config = function()
			vim.cmd("colorscheme nightfly")
		end,
	})
end)
