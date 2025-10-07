-- TODO: Snippet with header for notes
-- TODO: Snippet with header for latex + common tex maps
return {
	"hrsh7th/nvim-cmp",
	tag = "v0.0.2",
	dependencies = {
		{ "neovim/nvim-lspconfig" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },

		{
			"L3MON4D3/LuaSnip",
			tag = "v2.4.0",
			config = function()
				local ls = require("luasnip")
				require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
				-- vim.keymap.set({ "i", "s" }, "<C-L>", function()
				--   ls.jump(1)
				-- end, { silent = true })
				-- vim.keymap.set({ "i", "s" }, "<C-J>", function()
				--   ls.jump(-1)
				-- end, { silent = true })
				vim.keymap.set({ "i", "s" }, "<Tab>", function()
					if ls.expand_or_jumpable() then
						ls.expand_or_jump()
					else
						vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
					end
				end, { silent = true })

				vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
					if ls.jumpable(-1) then
						ls.jump(-1)
					end
				end, { silent = true })
			end,
		},
		{ "saadparwaiz1/cmp_luasnip" },
		-- Added for zotcite
		{ "jalvesaq/cmp-zotcite" },
	},
	event = { "InsertEnter" },
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
				["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
				["<C-r>"] = cmp.mapping.complete({}),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
			}),
			-- sources = cmp.config.sources({
			--   { name = "cmp_zotcite" },
			--   { name = "nvim_lsp" },
			--   { name = "luasnip" },
			--   { name = "buffer" },
			--   { name = "path" },
			-- }),
			sources = {
				{ name = "cmp_zotcite" },
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			},
			-- Functino which prints the completion source, useful for debugging
			-- formatting = {
			--   format = function(entry, vim_item)
			--     vim_item.menu = entry.source.name
			--     return vim_item
			--   end,
			-- },
		})
		-- Use an on_attach function to only map the following keys
		-- after the language server attaches to the current buffer
		local on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

			-- Mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
			vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
			vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
			vim.keymap.set("n", "<space>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, bufopts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
			vim.keymap.set("n", "<space>f", function()
				vim.lsp.buf.format({ async = true })
			end, bufopts)
		end

		-- Set up lspconfig.
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Define servers to be configured
		local servers = {
			"pyright",
			"ruff",
			"texlab",
			"marksman",
			"clangd",
			"cmake",
			"lua_ls",
			"bashls",
			"dockerls",
			"eslint",
		}

		-- Configure all servers with the same base settings
		for _, server in ipairs(servers) do
			vim.lsp.enable(server, {
				on_attach = on_attach,
				capabilities = capabilities,
				autostart = true,
			})
		end
	end,
}
