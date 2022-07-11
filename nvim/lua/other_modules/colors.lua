-- color scheme --
-- gruvbox config --
-- https://github.com/gruvbox-community/gruvbox/wiki/Configuration --

vim.g.gruvbox_bold = '0'
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_transparent_bg = '1'
vim.g.gruvbox_invert_selection = '0'
vim.g.gruvbox_color_column = 'dark0_hard'
vim.g.gruvbox_sign_column = 'none'
vim.cmd 'colorscheme gruvbox'

vim.api.nvim_set_hl(0, 'Normal', {guibg=NONE, ctermbg=NONE,})
