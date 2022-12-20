-- Remaps

local silentnoremap = { noremap = true, silent = true }

-- Remapping Escape to jk
vim.keymap.set("i", "jk", "<Esc>", silentnoremap)

-- Turn off search highlight
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", silentnoremap)

-- Remapping fzf commands
vim.keymap.set("n", "<leader>r", ":Files<CR>", silentnoremap)

-- Markdown Preview Commands
vim.keymap.set("n", "<C-s>", "<Plug>MarkdownPreview", silentnoremap)
vim.keymap.set("n", "<M-s>", "<Plug>MarkdownPreviewStop", silentnoremap)
vim.keymap.set("n", "<C-p>", "<Plug>MarkdownPreviewToggle", silentnoremap)

-- Fugitive
vim.keymap.set("n", "<leader>gu", ":diffget //<CR>", silentnoremap)
vim.keymap.set("n", "<leader>gc", ":Git commit <CR>", silentnoremap)
vim.keymap.set("n", "<leader>gp", ":Git push <CR>", silentnoremap)
vim.keymap.set("n", "<leader>gs", ":Git<CR>", silentnoremap)

-- Go to tab by number
vim.keymap.set("n", "<leader>1", "1gt", silentnoremap)
vim.keymap.set("n", "<leader>2", "2gt", silentnoremap)
vim.keymap.set("n", "<leader>3", "3gt", silentnoremap)
vim.keymap.set("n", "<leader>4", "4gt", silentnoremap)
vim.keymap.set("n", "<leader>5", "5gt", silentnoremap)
vim.keymap.set("n", "<leader>6", "6gt", silentnoremap)
vim.keymap.set("n", "<leader>7", "7gt", silentnoremap)
vim.keymap.set("n", "<leader>8", "8gt", silentnoremap)
vim.keymap.set("n", "<leader>9", "9gt", silentnoremap)
vim.keymap.set("n", "<leader>0", ":tablast<CR>", silentnoremap)
