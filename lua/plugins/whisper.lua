return {
	"Avi-D-coder/whisper.nvim",
	config = function()
		require("whisper").setup({
			model = "base.en",
			keybind = "<C-p>",
			manual_trigger_key = "<Space>",
			show_whipser_output = true,
			step_ms = 3000,
			length_ms = 5000,
		})
	end,
	keys = {
		{ "<C-p>", mode = { "n", "i", "v" }, desc = "Toggle speech-to-text" },
	},
}
