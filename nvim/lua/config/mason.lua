require("mason").setup({
    PATH = "prepend", -- "skip" seems to cause the spawning error
})

require('mason-lspconfig').setup{
  ensure_installed = {
    "volar",
    "cssls",
    "html";
    "ltex",
    "omnisharp",
    "ts_ls",
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
