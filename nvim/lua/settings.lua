-- skip annoying undefined global all over
local vim = vim
local set = vim.opt
local map = require'utils'.map

---- SETTINGS ----
map('', '<space>', '<nop>', {noremap = true, silent = true})
vim.g.mapleader = " "

vim.g.did_load_filetypes = 1
vim.g.transparent_enabled = true
vim.g.python3_host_prog = "/usr/local/bin/python3.13"

set.nu = true
set.relativenumber = true

set.clipboard = 'unnamedplus'
-- set.updatetime = 50

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
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
set.textwidth = 80
set.signcolumn="yes:1"
set.conceallevel=1

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
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        -- Use a sharp border with `FloatBorder` highlights
        border = "rounded",
        max_width = 80,
      }
    )

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Enable underline, use default values
        underline = true,

        -- Enable virtual text, override spacing to 4
        virtual_text = {
          spacing = 4,
        },
        -- Use a function to dynamically turn signs off
        -- and on, using buffer local variables
        signs = function(namespace, bufnr)
          return vim.b[bufnr].show_signs == true
        end,
        -- Disable a feature
        update_in_insert = true,
      }
    )
  end,
})

-- set highlight group for inline hints
vim.cmd("hi LspInlayHint guifg=#a5a5a1 guibg=#3e3e3e")

vim.g.default_sequence_length = 4
-- vim.g.supercollider_snippet_comma_newline = 1
vim.g.skip_ts_context_commentstring_module = true

local opts = { noremap=true, silent=true }
vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
vim.keymap.set('n', '<space>e', function() vim.diagnostic.open_float() end, opts)
-- vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.keymap.set('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    -- Use a sharp border with `FloatBorder` highlights
    border = "rounded",
    max_width = 80,
  }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Enable underline, use default values
    underline = true,

    -- Enable virtual text, override spacing to 4
    virtual_text = {
      spacing = 4,
    },
    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = function(namespace, bufnr)
      return vim.b[bufnr].show_signs == true
    end,
    -- Disable a feature
    update_in_insert = true,
  }
)
vim.lsp.inlay_hint.enable()
vim.diagnostic.config({ virtual_text = true })
