-- Leader key
vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>bp<bar>sp<bar>bn<bar>bd<CR>',
                        {noremap = true})
