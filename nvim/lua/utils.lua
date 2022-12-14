local vim = vim

local M = {}

function M.map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    -- vim.keymap.set allows mapping to several modes, since mode can be a table
    vim.keymap.set(mode, lhs, rhs, options)
end

function M.cursorFollow()
    local so = vim.o.scrolloff
    if so == 999 then
        vim.o.scrolloff = 0
    else
    	vim.o.scrolloff = 999
    end
end

function M.lineNumbers()
    local line = vim.o.nu

    if line == true then
	vim.o.nu = false
	vim.o.relativenumber = false
    else
        vim.o.nu = true
        vim.o.relativenumber = true
    end
end

return M
