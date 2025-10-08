return {
	"jalvesaq/zotcite",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
	},
	lazy = false,
	keys = {
		{ "<leader>zc", "<cmd>Zseek<CR>", desc = "Toggle zotero search" },
	},
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
