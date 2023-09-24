local setlocal = vim.opt_local
local map = require'utils'.map

-- Indentation
setlocal.tabstop = 2
setlocal.softtabstop = 2
setlocal.shiftwidth = 2

map('n', '<C-k>', '<cmd>Telescope scdoc<cr>', {buffer = true})
