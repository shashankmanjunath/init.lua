return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			indent = { enable = true },
			ensure_installed = {
				"lua",
				"vimdoc",
				"python",
				"c",
				"cpp",
				"cuda",
				"yaml",
				"json",
				"markdown",
				"markdown_inline",
				-- "latex",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = { "latex" },
			}, -- Enable syntax highlighting
			additional_vim_regex_highlighting = false,
		})
	end,
}
