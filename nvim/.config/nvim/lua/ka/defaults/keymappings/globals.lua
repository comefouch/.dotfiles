-- Leader key
vim.g.mapleader = ','

-- Easy return to normal mode
vim.api.nvim_set_keymap('i', '<space><space>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>bp<bar>sp<bar>bn<bar>bd<CR>',
                        {noremap = true})
