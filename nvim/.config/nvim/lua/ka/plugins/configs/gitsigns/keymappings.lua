vim.api.nvim_set_keymap('n', ']h',
                        "&diff ? ']h' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '[h',
                        "&diff ? '[h' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'",
                        {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>hs',
                        '<cmd>lua require"gitsigns".stage_hunk()<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>hu',
                        '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>hr',
                        '<cmd>lua require"gitsigns".reset_hunk()<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>hp',
                        '<cmd>lua require"gitsigns".preview_hunk()<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>hb',
                        '<cmd>lua require"gitsigns".blame_line()<CR>',
                        {noremap = true})
