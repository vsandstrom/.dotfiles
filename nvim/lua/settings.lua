-- skip annoying undefined global all over
local vim = vim
local set = vim.opt
local map = require'utils'.map


---- SETTINGS ----
map('', '<space>', '<nop>', {noremap = true, silent = true})
vim.g.mapleader = " "
vim.g.did_load_filetypes = 1

vim.g.transparent_enabled = true

set.nu = true
set.relativenumber = true


set.clipboard = 'unnamedplus'
set.updatetime = 50

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.syntax = 'enabled'
set.autoindent = true
set.foldmethod = 'indent'
set.foldlevel = 99
set.expandtab = true
set.hlsearch = false
set.incsearch = true
set.termguicolors = false
set.hlsearch = true
set.wrap = true
set.textwidth = 110

set.smartindent = true

set.splitbelow = true
set.splitright = true
set.scrolloff = 999

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.hoverProvider then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end
  end,
})

