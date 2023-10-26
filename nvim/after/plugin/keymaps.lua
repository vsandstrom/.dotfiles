local vim = vim
local utils = require('utils')
local map = utils.map

local cursor = require('utils').cursorFollow
local lines = require('utils').lineNumbers

----- NEOTREE -----
map("n", "<C-o>", ":NeoTreeShowToggle<CR>", {desc = "Toggles NeoTree, legacy NERDTree key binding"})
----- SUPERCOLLIDER -----
map("n", "<C-k>", ":Telescope scdoc<CR>", {desc = "Telescope-scdoc search, similar as 'K'"})

----- SUPERCOLLIDER -----
map("n", "<C-t>", ":Telescope fd<CR>", {desc = "Telescope preview in PWD"})


-- set custom paragraph jumping in normal and visual mode
map({"n", "v"}, "U", "{", {desc = "Använder 'U' för 'upp', hoppar upp i paragrafer"})
map({"n", "v"}, "N", "}", {desc = "Använder 'N' för 'ner', hoppar ner i paragrafer"})
map({"n", "v"}, "H", "0", {desc = "Hoppar till början av raden"})
map({"n", "v"}, "L", "$", {remap = true, desc = "Hoppar till slutet av raden"})

-- jump to next open buffer
map({'n', 'v'}, '<leader><leader>', '<cmd>:bNext<CR>', {silent = true, desc = "Hoppa till nästa buffer"})

map({'n', 'v'}, '<leader><S><leader>', '<cmd>:bprevious<CR>', {silent = true, desc = "Hoppa till föregående buffer"})

map("t", "<esc>", "<C-\\><C-n>", {desc = "<ESC> works in terminal mode as in normal mode"})

-- FTerm mappings:
map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Packer sync:
map('n', '<leader>ps', '<CMD>PackerSync<CR>')

----- CUSTOM -----

map("n", "cc", "<ESC>:%substitute:::g<LEFT><LEFT><LEFT>", {desc = "Change all occurences of something"})

map("n", "<C-f>", function()
    return cursor()
end, {desc = "Toggles cursor follow on / off"})



map("n", "<C-l>", function()
    return lines()
end, {desc = "Toggles line numbers on / off"})

map({"n"}, "<C-h>", "<CMD>TmuxNavigateLeft<CR>", {desc = "window left"})
map({"n"}, "<C-l>", "<CMD>TmuxNavigateRight<CR>", {desc = "window right"})
map({"n"}, "<C-j>", "<CMD>TmuxNavigateDown<CR>", {desc = "window down"})
map({"n"}, "<C-k>", "<CMD>TmuxNavigateUp<CR>", {desc = "window up"})

map({"n"}, "gd", "<CMD>Lspsaga goto_definition<CR>", {desc = "go to definition"})
map({"n"}, "gD", "<CMD>Lspsaga peek_definition<CR>", {desc = "peek definition"})
map({"n"}, "<leader>c", "<CMD>Lspsaga code_action<CR>", {desc = "code actions available"})
