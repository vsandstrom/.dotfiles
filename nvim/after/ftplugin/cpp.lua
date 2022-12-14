local setlocal = vim.opt_local
local map = require'utils'.map

setlocal.tabstop = 4
setlocal.shiftwidth = 4

----- CPPMAN -----
map("n", "<leader>cm", function ()
  require('cppman').open_cppman_for(vim.fn.expand("<cword>"))
    end)

map("n", "<leader>k", function ()
  require('cppman').input()
end)
