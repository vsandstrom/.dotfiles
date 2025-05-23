require'nvim-treesitter'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "c", "lua", "rust", "cpp", "python", "typescript", "supercollider", "bash" ,
    "vue", "bibtex", "go", "html", "markdown_inline", "json", "llvm", "toml",
    "tsx", "yaml", "latex", "gitignore", "dockerfile"
  },
  version = nil,

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/usr/share/nvim", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true
  },
  autotag = {
    enable = true
  }
}

-- tree-sitter-supercollider
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.supercollider = {
	install_info = {
		-- url = "~/code/tree-sitter-supercollider",
		url = "/Users/viktorsandstrom/.local/share/nvim/tree-sitter-supercollider",
		files = {"src/parser.c"},
		maintainer = "@madskjeldgaard"
	},
	filetype = "supercollider", -- if filetype does not agrees with parser name
}
