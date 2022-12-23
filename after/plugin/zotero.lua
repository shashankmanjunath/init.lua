vim.api.nvim_exec(
	[[
function! ZoteroCite()
  " pick a format based on the filetype (customize at will)
  let format = &filetype =~ '.*tex' ? 'citep' : 'pandoc'
  let api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format='.format.'&brackets=1'
  let ref = system('curl -s '.shellescape(api_call))
  return ref
endfunction
]],
	true
)
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>z", '"=ZoteroCite()<CR>p', opts)
vim.keymap.set("i", "<C-z>", "<C-r>=ZoteroCite()<CR>")
