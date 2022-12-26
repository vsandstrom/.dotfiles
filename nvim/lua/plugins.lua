vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Lua implementation of gruvbox (look into other variants
  use 'morhetz/gruvbox'
  use 'ellisonleao/gruvbox.nvim'
  use 'rebelot/kanagawa.nvim'

  -- Replacement for default filetype.vim
  use("nathom/filetype.nvim")

  -- use {
  --   'williamboman/mason.nvim',
  --   'williamboman/mason-lspconfig.nvim'
  -- }

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'

  use 'kylechui/nvim-surround'

  use {'nvim-treesitter/nvim-treesitter',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/nvim-treesitter-textobjects'
    },
  }

  use 'nvim-lualine/lualine.nvim'

  -- Latex compiler, auto-updates 'zathura' reader
  use 'lervag/vimtex'

  -- Edit shared files as in google drive
  use 'jbyuki/instant.nvim'

  -- Snippet support
  use 'norcalli/snippets.nvim'
  use 'madskjeldgaard/lua-supercollider-snippets'

  -- Old multi-cursor plugin
  use 'mg979/vim-visual-multi'

  -- NerdTree replacement
  -- use 'kyazdani42/nvim-tree.lua'
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- Old quick comment-out plugin, and auto-complete parenthesis, and surround
  use 'jiangmiao/auto-pairs'
  -- Clean python folding. z+c & z+a
  use 'tmhedberg/SimpylFold'

  -- multi-plugin with surround, comment etc
  -- use 'echasnovski/mini.nvim'

  use 'numToStr/Comment.nvim'


use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'davidgranstrom/scnvim'
  use 'davidgranstrom/telescope-scdoc.nvim'

  -- TODO: setup correctly
  use { 'madskjeldgaard/supercollider-h4x-nvim',
    config = function ()
      require'supercollider-h4x'.setup()
    end,
    after = {'scnvim'},
    requires = {
      'davidgranstrom/scnvim'
    }
  }
  -- faust syntax and filetype
  use 'gmoe/vim-faust'
--
  -- Other faust things
  use 'madskjeldgaard/faust-nvim'

  -- Arduino vim-IDE
  use 'stevearc/vim-arduino'

  use 'L3MON4D3/LuaSnip'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'quangnguyen30192/cmp-nvim-tags',
    }
  }

  use 'folke/which-key.nvim'

  use {'madskjeldgaard/cppman.nvim',
  requires = {
      { 'MunifTanjim/nui.nvim' }
  }}


-- INSERT MADS Faust and h4x stuff
  use 'xiyaowong/nvim-transparent'

  -- GoLang pretty stuff
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommanded if need floating window support

  -- Rust stuff
  use 'simrat39/rust-tools.nvim'

  -- Floating Terminal-buffer
  use 'numToStr/FTerm.nvim'

  -- Highlight some text when taking notes
  use "Pocco81/HighStr.nvim"

  -- use 'lewis6991/hover.nvim'
  use { 'ibhagwan/fzf-lua',

  -- java-lsp
  use 'mfussenegger/nvim-jdtls',

    -- optional for icon support
  use 'nvim-tree/nvim-web-devicons'
  }




end)
