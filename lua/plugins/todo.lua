return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>tn",
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Next todo comment",
		},
		{
			"<leader>tp",
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Previous todo comment",
		},
		{ "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
		{ "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
		{ "<leader>t", "<cmd>TodoTelescope<cr>", desc = "Todo" },
		{ "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
	},
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
