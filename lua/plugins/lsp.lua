return {
	-- LSP Setup
	{
		"mason-org/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = function()
			return {
				-- A list of servers to automatically install if they're not already installed.
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
				-- JSON/Markdown
				"prettier",
				},
				-- Automatically install configured servers
				automatic_installation = true,
			}
		end,
		config = function(_, opts)
			-- Set up mason-lspconfig with the opts
			require("mason-lspconfig").setup(opts)

			-- Configure diagnostics
			local diag_opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, diag_opts)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, diag_opts)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, diag_opts)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, diag_opts)

			vim.diagnostic.config({ virtual_text = false })
		end,
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{ "neovim/nvim-lspconfig", lazy = true },
		},
	},
}
