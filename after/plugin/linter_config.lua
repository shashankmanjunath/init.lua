require("lint").linters_by_ft = {
	tex = { "lacheck" },
	markdown = { "markdownlint" },
	lua = { "luacheck" },
	sh = { "ShellCheck" },
	dockerfile = { "hadolint" },
	py = { "pylint" },
}

-- Runs linter after write
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
