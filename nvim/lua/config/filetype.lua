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
      sh = 'sh'
    },
    complex = {
      [".bash*"] = "bash",
      [".zsh*"] = "zsh",
      [".gitignore"] = "gitignore",
    }
  }
})
