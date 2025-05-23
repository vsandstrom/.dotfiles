require('filetype').setup({
  overrides = {
    extensions = {
      c = 'c',
      h = 'c',
      sc = 'supercollider',
      scd = 'supercollider',
      hpp = 'cpp',
      cpp = 'cpp',
      rs = 'rust',
      sh = 'sh',
      tex = 'tex',
      lua = 'lua',
      svelte = 'svelte'

    },
    complex = {
      [".bash*"] = "bash",
      [".zsh*"] = "zsh",
      [".gitignore"] = "gitignore",
    }
  }
})
