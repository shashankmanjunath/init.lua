-- File system explorer and comment handling
return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		keys = {
			{ "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				disable_netrw = true,
				hijack_netrw = true,
				view = {
					width = 30,
					side = "left",
				},
				renderer = {
					icons = {
						show = {
							file = true,
							folder = true,
							folder_arrow = true,
							git = true,
						},
					},
				},
				filters = {
					dotfiles = false,
					custom = { "^.git$" },
				},
			})
		end,
	},
	{
		-- TODO: switch to https://github.com/terrortylor/nvim-comment
		"preservim/nerdcommenter",
		event = "VeryLazy",
		config = function()
			-- Add spaces after comment deliniters by default
			vim.api.nvim_set_var("NERDSpaceDelims", 1)

			-- Use compact syntax for prettified multi-line comments
			vim.api.nvim_set_var("NERDCompactSexyComs", 1)

			-- Align line-wise comment delimiters flush left instead of following code
			-- indentation
			vim.api.nvim_set_var("NERDDefaultAlign", "left")

			-- Allow commmenting and inverting empty lines (useful when commenting a region)
			vim.api.nvim_set_var("NERDCommentEmptyLines", 1)

			-- Enable trimming of trailing whitespace when uncommenting
			vim.api.nvim_set_var("NERDTrimTrailingWhitespace", 1)
		end,
	},
}
