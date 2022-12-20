-- Remaps

local silentnoremap = {noremap = true, silent = true}
local silentnoremap = {noremap = true, silent = true}

-- Remapping Escape to jk
vim.keymap.set('i', 'jk', '<Esc>', silentnoremap)

-- Turn off search highlight
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>', silentnoremap)

-- Remapping fzf commands
vim.keymap.set('n', '<leader>r', ':Files<CR>', silentnoremap)

-- Markdown Preview Commands
vim.keymap.set('n', '<C-s>', '<Plug>MarkdownPreview', silentnoremap)
vim.keymap.set('n', '<M-s>', '<Plug>MarkdownPreviewStop', silentnoremap)
vim.keymap.set('n', '<C-p>', '<Plug>MarkdownPreviewToggle', silentnoremap)

-- Fugitive
vim.keymap.set('n', '<leader>gu', ':diffget //<CR>', silentnoremap)
vim.keymap.set('n', '<leader>gc', ':Git commit <CR>', silentnoremap)
vim.keymap.set('n', '<leader>gp', ':Git push <CR>', silentnoremap)
vim.keymap.set('n', '<leader>gs', ':Git<CR>', silentnoremap)
