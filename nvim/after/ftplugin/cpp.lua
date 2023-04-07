local map = require'utils'.map

----- CPPMAN -----
map("n", "<leader>cm", function ()
  require('cppman').open_cppman_for(vim.fn.expand("<cword>"))
    end)

map("n", "<leader>k", function ()
  require('cppman').input()
end)
