-- Leader key
vim.g.mapleader = ','

-- Easy return to normal mode
vim.api.nvim_set_keymap('i', ',,', '<Esc>', { noremap = true })