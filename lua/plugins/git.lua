-- Git wrapper
return {
	"tpope/vim-fugitive",
	lazy = false,
	keys = {
		{ "<leader>gs", "<cmd>Git<CR>" },
		{ "<leader>gc", "<cmd>Git commit<CR>" },
		{ "<leader>gp", "<cmd>Git push<CR>" },
		{ "<leader>gm", "<cmd>Git mergetool<CR>" },
		{ "<leader>gd", "<cmd>Git difftool<CR>" },
		{ "<leader>gv", "<cmd>Gvdiffsplit<CR>" },
		{ "<leader>gg", "<cmd>diffget<CR>" },
	},
}
