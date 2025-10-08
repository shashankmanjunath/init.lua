-- Remaps
local silentnoremap = { noremap = true, silent = true }

-- Remapping Escape to jk
vim.keymap.set("i", "jk", "<Esc>", silentnoremap)

-- Turn off search highlight
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", silentnoremap)

-- Markdown Preview Commands
vim.keymap.set("n", "<C-s>", "<Plug>MarkdownPreview", silentnoremap)
vim.keymap.set("n", "<M-s>", "<Plug>MarkdownPreviewStop", silentnoremap)
vim.keymap.set("n", "<C-p>", "<Plug>MarkdownPreviewToggle", silentnoremap)

-- Spell list
vim.keymap.set("n", "<leader>p", ":set spell spelllang=en_us<CR>", silentnoremap)

-- Fugitive
-- vim.keymap.set("n", "<leader>gu", ":diffget //<CR>", silentnoremap)
-- vim.keymap.set("n", "<leader>gc", ":Git commit <CR>", silentnoremap)
-- vim.keymap.set("n", "<leader>gp", ":Git push <CR>", silentnoremap)
-- vim.keymap.set("n", "<leader>gs", ":Git<CR>", silentnoremap)

-- Splits
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", silentnoremap)
vim.keymap.set("n", "<leader>s", ":split<CR>", silentnoremap)
vim.keymap.set("n", "<leader>o", ":on<CR>", silentnoremap)
vim.keymap.set("n", "<leader>d", ":bd<CR>", silentnoremap)
vim.keymap.set("n", "<leader>w", "<C-w><C-r><CR>", silentnoremap)
vim.keymap.set("n", "<leader>e", "<C-w>:hide<CR>", silentnoremap)

-- Terminal
vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", { noremap = true, silent = true })
