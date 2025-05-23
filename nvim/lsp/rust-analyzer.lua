return {
  cmd = {'rust-analyzer'},
  root_markers = {'Cargo.toml'},
  filetypes = {'rs', 'rust'},
  -- reuse_client = { true }
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        styleLints = {
          enable = true
        },
        procMacroSrv = '$HOME/.cargo/bin/rust-src'
      },
      checkOnUpdate = true,
      checkOnSave = true,
      check = {
        command = "clippy",
        features = "all",
        allTargets = true
      },
    cargo = {
      buldScripts = {
        enable = true,
      },
      features = "all"
    },
    procMacro = {
      enable = true,
    },
    imports = {
      group = {
        enable = false
      },
      granularity = {
        group = "module",
      },
      prefix = "self"
    },
    completion = {
      postfix = {
        enable = true 
      }
    },

    inlay_hint = { true },
    chainingHints = {
      enable = true,
    },
    closingBraceHints = {
      enable = true,
      minLines = 25,
    },
    closureReturnTypeHints = {
      enable = true,
    },
    lifetimeElisionHints = {
      enable = "never",
      useParameterNames = false,
    },
    maxLength = 25,
    parameterHints = {
      enable = true,
    },
    reborrowHints = {
      enable = "never",
    },
    renderColons = true,
    typeHints = {
      enable = true,
      hideClosureInitialization = false,
      hideNamedConstructor = false,
    },
  },
  },
  capabilities = {
    experimental = {
      serverStatusNotification = true
    }
  }
}

