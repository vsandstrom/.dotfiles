local scnvim = require('scnvim')
local map = scnvim.map
local map_expr = scnvim.map_expr
scnvim.setup {
  keymaps = {
      ['<C-e>'] = {
        map('editor.send_block', {'i', 'n'}),
        map('editor.send_selection', 'x'),
      },
    ['<F5>'] = map('editor.send_block', {'i', 'n'}),
    ['<CR>'] = map('postwin.toggle', 'n'),
    ['<C-CR>'] = map('postwin.toggle', 'i'),
    ['<leader>l'] = map('postwin.clear', 'n'),
    -- ['<C-k>'] = map('signature.show', {'n', 'i'}),
    ['<F12>'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>st'] = map('sclang.start'),
    ['<leader>sk'] = map('sclang.recompile'),
    ['<F1>'] = map_expr('s.boot'),
    ['<F2>'] = map_expr('s.meter'),
    ['<F3>'] = scnvim.map(function ()
      require'telescope'.extensions.supercollider.sc_definitions()
    end, {'n', 'x', 'i'})
  },
  editor = {
    highlight = {
      color = 'IncSearch',
      type = 'flash',
      flash = {
          repeats = 3,
      }
    },
  },
  postwin = {
    float = {
      enabled = true,
      width = 64,
      height = 52
    },
  },
}

