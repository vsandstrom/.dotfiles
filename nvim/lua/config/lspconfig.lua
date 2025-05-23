----- NVIM-LSPCONFIG -----
local vim = vim
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua)")
table.insert(runtime_path, "lua/?/init.lua")
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
  'ts_ls', 'clangd', 'lua_ls', 'pylsp', 'bashls', 'ltex', 'volar', 'html', 'cssls', 'gopls', 'omnisharp', 'svelte', 'jdtls',
  -- 'rust_analyzer'
  -- 'ts_ls', 'clangd', 
  -- 'lua_ls',  
}


for _, lsp in pairs(servers) do
  -- Lua LSP needed a bit coaxing
  -- if lsp == "lua_ls" then
  --   require('lspconfig')[lsp].setup {
  --     on_init = function(client)
  --         local path = client.workspace_folders[1].name
  --         if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
  --           client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
  --             Lua = {
  --               runtime = {
  --                 -- Tell the language server which version of Lua you're using
  --                 -- (most likely LuaJIT in the case of Neovim)
  --                 version = 'LuaJIT'
  --               },
  --               -- Make the server aware of Neovim runtime files
  --               workspace = {
  --                 checkThirdParty = false,
  --                 library = {
  --                   vim.env.VIMRUNTIME
  --                   -- "${3rd}/luv/library"
  --                   -- "${3rd}/busted/library",
  --                 }
  --                 -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
  --                 -- library = vim.api.nvim_get_runtime_file("", true)
  --               }
  --             }
  --           })
  --
  --           client.notify("workspace/didChangeConfiguration", {
  --             settings = client.config.settings
  --           })
  --         end
  --         return true
  --       end
  --   }

  -- elseif lsp == "tsserver" then
  --   require"lspconfig".tsserver.setup{
  --     settings = {
  --       typescript = {
  --         inlayHints = {
  --           includeInlayParameterNameHints = "all",
  --           includeInlayParameterNameHintsWhenArgumentMatchesName = true,
  --           includeInlayFunctionParameterTypeHints = true,
  --           includeInlayVariableTypeHints = true,
  --           includeInlayVariableTypeHintsWhenTypeMatchesName = true,
  --           includeInlayPropertyDeclarationTypeHints = true,
  --           includeInlayFunctionLikeReturnTypeHints = true,
  --           includeInlayEnumMemberValueHints = true,
  --         },
  --       },
  --       javascript = {
  --         inlayHints = {
  --           includeInlayParameterNameHints = "all",
  --           includeInlayParameterNameHintsWhenArgumentMatchesName = true,
  --           includeInlayFunctionParameterTypeHints = true,
  --           includeInlayVariableTypeHints = true,
  --           includeInlayVariableTypeHintsWhenTypeMatchesName = true,
  --           includeInlayPropertyDeclarationTypeHints = true,
  --           includeInlayFunctionLikeReturnTypeHints = true,
  --           includeInlayEnumMemberValueHints = true,
  --         },
  --       },
  --     }
  --   }

  -- elseif lsp == "svelte" then
  --   require('lspconfig').svelte.setup {
  --     settings = {
  --       cmd = {"svelte-language-server", "--stdio"},
  --       filetypes = {"svelte"},
  --       typescript = {
  --         inlayHints = {
  --           parameterNames = { enabled = 'all' },
  --           parameterTypes = { enabled = true },
  --           variableTypes = { enabled = true },
  --           propertyDeclarationTypes = { enabled = true },
  --           functionLikeReturnTypes = { enabled = true },
  --           enumMemberValues = { enabled = true },
  --         },
  --       },
  --     },
  --   }

  -- elseif lsp == "clangd" then
  --   require("lspconfig").clangd.setup{
  --     settings = {
  --       clangd = {
  --         InlayHints = {
  --           Designators = true,
  --           Enabled = true,
  --           ParameterNames = true,
  --           DeducedTypes = true,
  --         },
  --         fallbackFlags = { "-std=c++20" },
  --       },
  --     }
  --   }
  if lsp == "omnisharp" then
    local pid = vim.fn.getpid()
    local omnisharp_bin = "/Users/viktorsandstrom/Downloads/omnisharp-osx-x64-net6.0/OmniSharp"
    require('lspconfig')[lsp].setup{
      cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
      omnisharp = {
        useModernNet = false,
        monoPath = "/usr/bin/mono"
    }}
  elseif lsp == "cssls" then 
    require('lspconfig')[lsp].setup{
      capabilities = {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = true
            }
          }
        }
      }
    }
  elseif lsp == "ltex" then
    require('lspconfig')[lsp].setup{
      filetypes = {'markdown', 'md', 'tex'},
      settings = {
        ltex = {
          language = {"en-US", "sv-SV"},
          additionalRules = {
            motherTongue = "sv-SV",
          }
        }
      },
      on_attach = on_attach,
    }
  else
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,

  }
  end
end

-- local function setup_lsp_diags()
--   vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics,
--     {
--       virtual_text = false,
--       signs = true,
--       update_in_insert = false,
--       underline = true,
--     }
--   )
-- end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    -- Use a sharp border with `FloatBorder` highlights
    border = "rounded",
    max_width = 80,
  }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Enable underline, use default values
    underline = true,

    -- Enable virtual text, override spacing to 4
    virtual_text = {
      spacing = 4,
    },
    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = function(namespace, bufnr)
      return vim.b[bufnr].show_signs == true
    end,
    -- Disable a feature
    update_in_insert = false,
  }
)

