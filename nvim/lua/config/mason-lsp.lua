require('mason-lspconfig').setup {
  ensure_installed = {
  'python-lsp-server', 'tsserver', 'clangd', 'lua-language-server', 'bashls', 'ltex', 'volar', 'html', 'cssls'
  },
  automatic_installation = true
}
