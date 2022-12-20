-- LaTeX handling
vim.api.nvim_set_var("tex_flavor", "latexmk")
vim.api.nvim_set_var("vimtex_view_method", "sioyek")
vim.api.nvim_set_var("vimtex_view_sioyek_exe", "/Applications/sioyek.app/Contents/MacOS/sioyek")
vim.api.nvim_set_var("vimtex_quickfix_mode", 0)

-- Setting build dir to subdirectory with name of the current file
-- vim.api.nvim_set_var("vimtex_compiler_latexmk", {'build_dir': {-> expand("%:t:r")}})
vim.cmd([[ let g:vimtex_compiler_latexmk = {'build_dir': {-> expand("%:t:r")}} ]])
