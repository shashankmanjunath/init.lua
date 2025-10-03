return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			highlight = { enable = true }, -- Enable syntax highlighting
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
			},
			auto_install = true, -- Optional: Automatically install missing parsers
			-- ignore_install = { "some_language" }, -- Optional: languages to ignore auto-install for
			-- modules = {
			--   -- Further configure specific treesitter modules if needed
			-- },
		})
	end,
}
