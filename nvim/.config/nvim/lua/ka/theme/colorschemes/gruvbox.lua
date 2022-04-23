vim.o.termguicolors = true
vim.o.background = 'dark'

vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_sign_column = 'dark0_hard'
vim.g.gruvbox_invert_selection = 0
vim.g.gruvbox_number_column = 'dark0_hard'
vim.g.gruvbox_invert_tabline = true

vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')
vim.cmd('highlight SignColumn guibg=#282828')

vim.cmd('colorscheme gruvbox')
