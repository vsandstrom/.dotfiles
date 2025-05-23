local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.lsp.enable({'clangd',  'ts_ls', 'svelte', 'luals', 'rust-analyzer'})
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

require('settings')
require("lazy").setup("plugins", {
  defaults = {
		lazy = true,
		version = nil, -- dont use version="*"
	},
	install = {
		missing = true,
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				-- "tutor",
				"zipPlugin",
			},
		},
	},
})

---- PLUGIN CONFIG ----:
-- require('config.high-str')

-- vim.lsp.config('*', {
--   root_markers = { '.git' },
--   capabilties = {
--     textDocument = {
--       semanticTokens = {
--         multilineTokenSupport = true,
--       }
--     }
--   }
-- })

-- vim.lsp.enable({'clangd', 'rust-analyzer', 'ts_ls', 'svelte'})
-- vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config('*', {
  root_markers = { '.git' },
  capabilities = capabilities
  -- capabilties = {
  --   textDocument = {
  --     semanticTokens = {
  --       multilineTokenSupport = true,
  --     }
  --   }
  -- }
})
