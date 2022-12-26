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
    "pyright",
    "sumneko_lua",
    "clangd",
    "bashls",
    "arduino_language_server"
  }
}
