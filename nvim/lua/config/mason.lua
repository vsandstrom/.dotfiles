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
    "lua_ls",
    "clangd",
    "bashls",
    "arduino_language_server"
  }
}
