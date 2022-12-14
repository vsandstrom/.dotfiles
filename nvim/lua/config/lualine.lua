
-- settings for lualine
local function getwords()
    if vim.bo.filetype == "md" or vim.bo.filetype == "markdown" or vim.bo.filetype == "txt" then
        return tostring(vim.fn.wordcount().words)
    else
        return ""
    end
end

local function scstatus()
    if vim.bo.filetype == "supercollider" then
        stat = vim.fn["scnvim#statusline#server_status"]()
        stat = stat:gsub("%%", "♪")
        return stat
    else
        return ""
    end
end


require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = { 'filename' },
    lualine_x = { scstatus, 'filetype' },
    lualine_y = { 'progress', getwords },
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

