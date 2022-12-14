local api = vim.api

api.autocmd(
  {"BufWritePre"},
  {pattern = "*.go", command = ":silent! lua require('go.format').gofmt()"}
)
