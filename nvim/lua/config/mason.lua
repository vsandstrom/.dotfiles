require('mason').setup{}
require('mason-lspconfig').setup{
  ensure_installed = {
    "volar",
    "cssls",
    "html";
    "ltex",
    "gopls",
    "omnisharp",
    "tsserver",
    "pylsp",
    "lua_ls",
    "clangd",
    "bashls",
    "arduino_language_server",
    "svelte"
    -- "rust_analyzer"
  },
  automatic_installation = true
}
