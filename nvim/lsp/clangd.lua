return {
  cmd = {'clangd', '--background-index'},
  filetypes = {'c', 'cpp'},
  root_markers = {'compile_commands.json', 'compile_flags.txt'},
    settings = {
      clangd = {
        InlayHints = {
          Designators = true,
          Enabled = true,
          ParameterNames = true,
          DeducedTypes = true,
        },
        fallbackFlags = { "-std=c++20" },
      },
    }
}
