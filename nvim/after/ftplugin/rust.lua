local bo = vim.bo

require('rust-tools').inlay_hints.enable()

require('rust-tools').hover_actions.hover_actions()
-- Command:
-- RustHoverRange 
-- require'rust-tools'.hover_range.hover_range()

bo.tabstop=2
bo.shiftwidth=2
bo.softtabstop=2
