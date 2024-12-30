local set = vim.opt
local config = {
    cmd = {'/path/to/jdt-language-server/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
