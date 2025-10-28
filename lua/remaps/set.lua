-- Sets custom neovim settings

-- Encoding
vim.o.encoding = "utf-8"

-- Relative Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Tab handling
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- 80 character maximum
vim.opt.colorcolumn = "80"
vim.opt.textwidth = 80

-- Turning off swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wb = false

-- Automatically refresh after buffer is changed externally
vim.o.autoread = true

-- Termguicolors for colorschemes
vim.o.termguicolors = true

-- Setting background dark
vim.o.background = "dark"

-- Search as characters are entered, and highlight matches
vim.o.incsearch = true
vim.o.hlsearch = true

-- Setting python provider
vim.api.nvim_set_var("python3_host_prog", "python")

-- Fixing markdown style
vim.g.markdown_recommended_style = 0

vim.g.python3_host_prog = "/Users/smanjunath/.venv/nvim/bin/python"
