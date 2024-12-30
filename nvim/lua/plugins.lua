return {
  -- colorscheme --
  { 'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end,
  },

  {
    'MysticalDevil/inlay-hints.nvim',
    event = "LspAttach",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function ()
      require'inlay-hints'.setup()
    end
  },

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
  { 'levouh/tint.nvim', config = function() require('config.tint') end, lazy = true},
  -- key combo reminder
  { 'folke/which-key.nvim', config = function() require('config.which-key') end, lazy = true},

  { "nvim-neo-tree/neo-tree.nvim",
    branch = 'v3.x',
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim", 
      "nvim-tree/nvim-web-devicons",
      "3rd/image.nvim"
    },
    config = function() require('config.neo-tree') end
  },

  -- startup screen --
  { 'goolord/alpha-nvim', lazy = false,
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function() require('config.alpha-nvim') end
  },

  --- Treesitter expansions ---

  { 'windwp/nvim-ts-autotag',
    ft = {"ts", "svelte", "react", "tsx"},
    lazy = true,
  },

  { 'jose-elias-alvarez/null-ls.nvim',
    lazy = "VeryLazy",
    ft = {"ts", "svelte", "tsx", "rust", "c", "cpp"},
    config = function() require('config.null_ls') end
  },

   -- {'lvimuser/lsp-inlayhints.nvim',
   --   config = function()
   --     require('config.lsp_inlayhints')
   --   end
   -- },

  -- TREESITTER --
  { 'nvim-treesitter/nvim-treesitter', 
    config = function() require('config.treesitter')
    end,
  },

  'JoosepAlviste/nvim-ts-context-commentstring',
  { 'nvim-treesitter/nvim-treesitter-textobjects', lazy = true },
  -- Replacement for default filetype.vim
  { "nathom/filetype.nvim", lazy = false, config = function() require('config.filetype') end },
  -- SEAMLESS NAVIGATION BETWEEN NVIM AND TMUX PANES
  { 'christoomey/vim-tmux-navigator', lazy = false},
  -- AUTOPAIR parenthesis etc.
  { 'jiangmiao/auto-pairs'},
  -- Clean python folding. z+c & z+a
  { 'tmhedberg/SimpylFold', ft = {"py", "python"}, lazy = true },
  --- Surround with parenthesis etc ---
  { 'kylechui/nvim-surround', config = function() require('config.surround') end },
  --- Status bar
  { 'nvim-lualine/lualine.nvim', config = function() require('config.lualine') end, lazy = true },
  -- Latex compiler, auto-updates 'zathura' reader
  { 'lervag/vimtex', ft = {"tex", "latex"}, lazy = false, config = function() 
    require('config.vimtex') 
  end
  },
  --- COMMENTING EASIER ---
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
  { 'neovim/nvim-lspconfig', config = function() require('config.lspconfig') end},
  { 'williamboman/mason-lspconfig.nvim', lazy = true},
  { 'williamboman/mason.nvim', config = function() require('config.mason') end, lazy = true, cmd = "Mason"},
  { 'L3MON4D3/LuaSnip', config = function() require('config.luasnips') end, lazy = true },

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
  },

  -- FZF in lua
  { "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  },

  -- Rust stuff
  -- { 'simrat39/rust-tools.nvim', ft = {"rust", "rs"}, config = function() require('config.rust-tools') end },

  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
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
  { 'norcalli/snippets.nvim', lazy = true},

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

