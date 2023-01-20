require('mason-lspconfig').setup {
  ensure_installed = {
  'pyright', 'tsserver', 'clangd', 'sumneko_lua', 'bashls', 'ltex', 'volar', 'html', 'cssls'
  },
  automatic_installation = true
}
