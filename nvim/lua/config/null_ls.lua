local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.autopep8,
        -- null_ls.builtins.formatting.luaformatter,
        null_ls.builtins.diagnostics.eslint,
    },
})
