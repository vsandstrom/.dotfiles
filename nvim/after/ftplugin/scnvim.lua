local map = require'utils'.map
vim.api.nvim_create_autocmd(
  { 'BufEnter' },
  { pattern = 'scnvim',
    command = [[map <buffer><silent><CR> :q<CR>]]
  }
)

