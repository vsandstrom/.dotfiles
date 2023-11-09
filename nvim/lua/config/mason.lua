require('mason').setup{}
require('mason-lspconfig').setup{
  ensure_installed = {
    "volar",
    "cssls",
    "html";
    "ltex",
    "omnisharp",
    "tsserver",
    "pylsp",
    "lua_ls",
    "clangd",
    "bashls",
    "arduino_language_server",
    "svelte"
    --- these are handled by their own plugins
    -- "rust_analyzer"
    -- "gopls",
  },
  automatic_installation = true
}
