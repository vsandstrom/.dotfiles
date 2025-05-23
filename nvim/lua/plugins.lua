return {
  -- colorscheme --
  { 'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end,
  },

  -- {
  --   'MysticalDevil/inlay-hints.nvim',
  --   event = "LspAttach",
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   config = function ()
  --     require'inlay-hints'.setup()
  --   end
  -- },

  { 'davidgranstrom/oblique-strategies.nvim',
    lazy = false,
    priority = 999,
    config = function()
      require('config.oblique')
    end,
  },

  {
    'martineausimon/nvim-lilypond-suite',
    config = function ()
      require('nvls').setup({})
    end
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/vaults/local",
        },
      },

      -- see below for full list of options 👇
    },
  },

  { 'stevearc/overseer.nvim',
    opts = {},
    dependencies = { 'stevearc/dressing.nvim', 'rcarriga/nvim-notify' },
  },

  -- turns nvim transparent
  -- { 'xiyaowong/nvim-transparent', lazy = false},
  -- silly plugin to show active split --
  { 'levouh/tint.nvim', config = function() require('config.tint') end, lazy = false},
  -- key combo reminder
  { 'folke/which-key.nvim', config = function() require('config.which-key') end, lazy = true},
  { "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    branch = "v3.x",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim", 
      "nvim-tree/nvim-web-devicons",
      -- "3rd/image.nvim"
    },
    config = function() require('config.neotree') end
  },

  -- startup screen --
  { 'goolord/alpha-nvim', lazy = false,
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function() require('config.alpha-nvim') end
  },

  --- Treesitter expansions ---

  { 'windwp/nvim-ts-autotag',
    ft = {"ts", "svelte", "react", "tsx", "html"},
    lazy = false,
  },

  -- { 'jose-elias-alvarez/null-ls.nvim',
  --   lazy = "VeryLazy",
  --   ft = {"ts", "svelte", "tsx", "rust", "c", "cpp"},
  --   config = function() require('config.null_ls') end
  -- },

   -- {'lvimuser/lsp-inlayhints.nvim',
   --   config = function()
   --     require('config.lsp_inlayhints')
   --   end
   -- },

  -- TREESITTER --
  { 'nvim-treesitter/nvim-treesitter', config = function() require('config.treesitter') end, },

  'JoosepAlviste/nvim-ts-context-commentstring',
  { 'nvim-treesitter/nvim-treesitter-textobjects', lazy = true },
  -- Replacement for default filetype.vim
  { "nathom/filetype.nvim", lazy = false, config = function() require('config.filetype') end },
  -- SEAMLESS NAVIGATION BETWEEN NVIM AND TMUX PANES
  { 'christoomey/vim-tmux-navigator', lazy = false},
--  --- Surround with parenthesis etc ---
  { 'kylechui/nvim-surround', lazy = false, config = function() require('config.surround') end },
  -- AUTOPAIR parenthesis etc.
  { 'jiangmiao/auto-pairs', lazy = false},
  -- Clean python folding. z+c & z+a
  {'numToStr/Comment.nvim', lazy = false,
    dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
    config = function() require('config.comment') end
  },

  --- DEBUGGING --- 
  { 'folke/neodev.nvim', lazy = true },
  { "mfussenegger/nvim-dap", lazy = true,
    dependencies = {"rcarriga/nvim-dap-ui"},
    config = function () require('config.dap') end
  },

  --- LSP AND COMPLETIONS
  -- { 'neovim/nvim-lspconfig', config = function() require('config.lspconfig') end},
  { 'williamboman/mason-lspconfig.nvim', lazy = true},
  { 'williamboman/mason.nvim', config = function() require('config.mason') end, lazy = true, cmd = "Mason"},
  { 'L3MON4D3/LuaSnip', config = function() require('config.luasnips') end, lazy = true },

  -- {
  --   'saghen/blink.cmp',
  --   -- optional: provides snippets for the snippet source
  --   dependencies = { 'rafamadriz/friendly-snippets' },
  --
  --   -- use a release tag to download pre-built binaries
  --   version = '1.*',
  --   -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  --   -- build = 'cargo build --release',
  --   -- If you use nix, you can build from source using latest nightly rust with:
  --   -- build = 'nix run .#build-plugin',
  --
  --   ---@module 'blink.cmp'
  --   ---@type blink.cmp.Config
  --   opts = {
  --     -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
  --     -- 'super-tab' for mappings similar to vscode (tab to accept)
  --     -- 'enter' for enter to accept
  --     -- 'none' for no mappings
  --     --
  --     -- All presets have the following mappings:
  --     -- C-space: Open menu or open docs if already open
  --     -- C-n/C-p or Up/Down: Select next/previous item
  --     -- C-e: Hide menu
  --     -- C-k: Toggle signature help (if signature.enabled = true)
  --     --
  --     -- See :h blink-cmp-config-keymap for defining your own keymap
  --     keymap = { preset = 'default' },
  --
  --     appearance = {
  --       -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
  --       -- Adjusts spacing to ensure icons are aligned
  --       nerd_font_variant = 'mono'
  --     },
  --
  --     -- (Default) Only show the documentation popup when manually triggered
  --     completion = { documentation = { auto_show = false } },
  --
  --     -- Default list of enabled providers defined so that you can extend it
  --     -- elsewhere in your config, without redefining it, due to `opts_extend`
  --     sources = {
  --       default = { 'lsp', 'path', 'snippets', 'buffer' },
  --     },
  --
  --     -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
  --     -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
  --     -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
  --     --
  --     -- See the fuzzy documentation for more information
  --     fuzzy = { implementation = "prefer_rust_with_warning" }
  --   },
  --   opts_extend = { "sources.default" }
  -- },

  { 'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'quangnguyen30192/cmp-nvim-tags',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('config.cmp-nvim-lsp') -- ***
    end,
    lazy = false
  },

  -- FZF in lua
  { "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  },

  -- Rust stuff
  -- { 'simrat39/rust-tools.nvim', ft = {"rust", "rs"}, config = function() require('config.rust-tools') end },

  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^5', -- Recommended
  --   lazy = false, -- This plugin is already lazy
  -- },
  -- Go stuff
  { 'ray-x/go.nvim', ft = {"go", "golang"}, dependencies = { 'ray-x/guihua.lua' }, config = function() require('config.golang') end },

  --- CPP manual (requires network connection) ---
  { 'madskjeldgaard/cppman.nvim', dependencies = {'MunifTanjim/nui.nvim'}, ft = {"cpp", "hpp"} },
  --- TELESCOPE ---
  { 'nvim-telescope/telescope.nvim', config = function () require('config.telescope') end,
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-fzf-native.nvim'},
    lazy = true,
    cmd = "Telescope"
  },

  { 'davidgranstrom/telescope-scdoc.nvim', lazy = true,
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope.nvim',
      'madskjeldgaard/telescope-supercollider.nvim',
      'madskjeldgaard/lua-supercollider-snippets',
    }
  },

  { 'davidgranstrom/scnvim', ft = {"scd", "supercollider"}, config = function() require('config.supercollider') end },

  -- Snippet support
  { 'norcalli/snippets.nvim', lazy = false},

  { "iamcco/markdown-preview.nvim",
    ft = {'md', 'markdown'},
    config = function() 
      vim.fn["mkdp#util#install"]()
      require('config.mdpreview')
    end,
  },

  { 'aspeddro/pandoc.nvim',
    ft = {"md", "markdown"},
    config = function ()
      require'pandoc'.setup()
    end
  },

  -- Other faust things
  -- faust syntax and filetype
  { 'madskjeldgaard/faust-nvim',
    lazy = true,
    ft = {"dsp"},
    dependencies = {
      {'gmoe/vim-faust'}
    }
  },

  { 'norcalli/nvim-colorizer.lua',
    config = function()
      require("colorizer").setup()
    end
  },

  -- Edit shared files as in google drive
  { 'jbyuki/instant.nvim', lazy = true, cmd = "Instant", config = function() 
    require('config.instant')
    end
  },
}
