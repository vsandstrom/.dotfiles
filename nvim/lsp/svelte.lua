return {
  cmd = {'svelteserver', '--stdio'},
  filetypes = {'svelte', 'javascript', 'typescript'},
  root_markers = {'svelte.config.js', 'tsconfig.json'},
  settings = {
    ["svelte-language-server"] = {
      plugin = {
        css = {enable = true},
        html = {enable = true},
        css = {enable = true},
      },
      inlayHints = {
        parameterNames = { enabled = 'all' },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        enumMemberValues = { enabled = true },
      },
    },
  }
}
