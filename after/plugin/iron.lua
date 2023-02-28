local silentnoremap = { noremap = true, silent = true }

local iron = require("iron.core")
iron.setup({
	config = {
		should_map_plug = false,
		scratch_repl = true,
		repl_definition = {
			python = {
				command = { "ipython" },
				format = require("iron.fts.common").bracketed_paste,
			},
		},
		repl_open_cmd = require("iron.view").split.vertical.botright(0.5),
	},
	keymaps = {
		send_motion = "ctr",
		visual_send = "ctr",
	},
})

vim.g.jupytext_fmt = "py"
vim.g.jupytext_style = "hydrogen"

vim.keymap.set("n", "<leader>x", "ctrih/^# +<CR><CR>", { remap = true, silent = true })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], silentnoremap)
