return {
	"jalvesaq/zotcite",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
	},
	lazy = false,
	config = function()
		require("zotcite").setup({
			filetypes = {
				"markdown",
				"pandoc",
				"rmd",
				"vimwiki",
			},
		})
	end,
}
