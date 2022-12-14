local setlocal = vim.opt_local
local map = require'utils'.map

-- Indentation
setlocal.tabstop = 4
setlocal.shiftwidth = 4

map('n', '<C-k>', '<cmd>Telescope scdoc<cr>', {buffer = true})
