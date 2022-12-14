require('hover').setup {
  init = function ()
    require("hover.providers.lsp")
  end,
  preview_opts = {
    border = true
  },
  preview_window = false,
  title = true
}
