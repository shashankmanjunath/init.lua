return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			indent = { enable = true }, -- Enable indentation
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
				"latex",
			},
			sync_install = false,
			auto_install = true, -- Optional: Automatically install missing parsers
			highlight = { enable = true }, -- Enable syntax highlighting
			-- ignore_install = { "some_language" }, -- Optional: languages to ignore auto-install for
			-- modules = {
			--   -- Further configure specific treesitter modules if needed
			-- },
		})
	end,
}
