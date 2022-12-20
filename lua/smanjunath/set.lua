-- Sets custom neovim settings

-- Relative Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Tab handling
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Adding line at 80 characters
vim.o.colorcolumn = 80

-- Turning off swap files
vim.o.swapfile = false
vim.o.backup = false
vim.o.wb = false

-- Automatically refresh after buffer is changed externally
vim.o.autoread = true

-- Termguicolors for colorschemes
vim.o.termguicolors = true
