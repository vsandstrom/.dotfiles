require('mason-lspconfig').setup {
  ensure_installed = {
  'pyright', 'rust_analyzer', 'tsserver', 'clangd', 'sumneko_lua', 'bashls', 'ltex', 'volar', 'html', 'cssls'
  },
  automatic_installation = true
}
