return {
	-- LSP Setup
	{
		"mason-org/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			-- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "sumneko_lua" }
			-- This setting has no relation with the `automatic_installation` setting.
			ensure_installed = {
				-- Python
				"pyright",
				"ruff",
				-- Latex
				"texlab",
				-- Markdown
				"marksman",
				-- C/C++
				"clangd",
				-- Cmake
				"cmake",
				-- Lua
				"lua_ls",
				-- Bash
				"bashls",
				-- Docker
				"dockerls",
				-- Javascript
				"eslint",
			},

			-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
			-- This setting has no relation with the `ensure_installed` setting.
			-- Can either be:
			--   - false: Servers are not automatically installed.
			--   - true: All servers set up via lspconfig are automatically installed.
			--   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
			--       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
			automatic_installation = false,
		},
		config = function()
			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

			vim.diagnostic.config({ virtual_text = false })
		end,
		dependencies = {
			{ "mason-org/mason.nvim", lazy = true, opts = {} },
			{ "neovim/nvim-lspconfig", lazy = true },
		},
	},
}
