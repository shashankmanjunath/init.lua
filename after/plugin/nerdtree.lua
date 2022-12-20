local silentnoremap = { noremap = true, silent = true }

-- Mapping open NERDTree
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", silentnoremap)

-- Add spaces after comment deliniters by default
vim.api.nvim_set_var("NERDSpaceDelims", 1)

-- Use compact syntax for prettified multi-line comments
vim.api.nvim_set_var("NERDCompactSexyComs", 1)

-- Align line-wise comment delimiters flush left instead of following code
-- indentation
vim.api.nvim_set_var("NERDDefaultAlign", "left")

-- Allow commmenting and inverting empty lines (useful when commenting a region)
vim.api.nvim_set_var("NERDCommentEmptyLines", 1)

-- Enable trimming of trailing whitespace when uncommenting
vim.api.nvim_set_var("NERDTrimTrailingWhitespace", 1)
