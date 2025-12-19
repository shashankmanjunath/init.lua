return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						-- Add any global insert mode mappings here
					},
					n = {
						-- Add any global normal mode mappings here
					},
				},
			},
			pickers = {
				buffers = {
					mappings = {
						i = {
							["<C-d>"] = actions.delete_buffer,
						},
						n = {
							["<C-d>"] = actions.delete_buffer,
							["dd"] = actions.delete_buffer,
						},
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>r", builtin.find_files, {})
		vim.keymap.set("n", "<leader>l", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
		vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
	end,
}
