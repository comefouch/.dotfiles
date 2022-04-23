vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>G<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gf', '<cmd>diffget //2<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gj', '<cmd>diffget //3<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Gdiffsplit<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>Git blame<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gh', '<cmd>0Gclog!<CR>', {noremap = true})
