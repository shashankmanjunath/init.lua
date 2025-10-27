return {
	"renerocksai/telekasten.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-telekasten/calendar-vim",
	},
	lazy = false,
	config = function()
		require("telekasten").setup({
			home = vim.fn.expand("~/Documents/notes/content"),
			auto_set_filetype = false,
		})

		-- Launch panel if nothing is typed after <leader>z
		vim.keymap.set("n", "<leader>f", "<cmd>Telekasten panel<CR>")

		-- Most used functions
		vim.keymap.set("n", "<leader>ff", "<cmd>Telekasten find_notes<CR>")
		vim.keymap.set("n", "<leader>fg", "<cmd>Telekasten search_notes<CR>")
		vim.keymap.set("n", "<leader>fd", "<cmd>Telekasten goto_today<CR>")
		vim.keymap.set("n", "<leader>fz", "<cmd>Telekasten follow_link<CR>")
		vim.keymap.set("n", "<leader>fn", "<cmd>Telekasten new_note<CR>")
		vim.keymap.set("n", "<leader>fc", "<cmd>Telekasten show_calendar<CR>")
		vim.keymap.set("n", "<leader>fb", "<cmd>Telekasten show_backlinks<CR>")
		vim.keymap.set("n", "<leader>fI", "<cmd>Telekasten insert_img_link<CR>")

		-- Call insert link automatically when we start typing a link
		vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
	end,
}
