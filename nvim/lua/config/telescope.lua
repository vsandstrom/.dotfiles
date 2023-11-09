require('telescope').setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
})
require('telescope').load_extension('scdoc')
require('telescope').load_extension('supercollider')
-- require('telescope').load_extension('fzfnative')
