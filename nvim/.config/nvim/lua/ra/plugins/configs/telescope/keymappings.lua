-- fuzzy finding
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fs', '<cmd>Telescope live_grep<CR>',
                        {noremap = true})
-- git
vim.api.nvim_set_keymap('n', '<Leader>fgf', '<cmd>Telescope git_files<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fgb', '<cmd>Telescope git_branches<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fgc', '<cmd>Telescope git_commits<CR>',
                        {noremap = true})
-- commands
vim.api.nvim_set_keymap('n', '<Leader>fch',
                        '<cmd>Telescope command_history<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fcl', '<cmd>Telescope commands<CR>',
                        {noremap = true})
-- registers
vim.api.nvim_set_keymap('n', '<Leader>frl', '<cmd>Telescope registers<CR>',
                        {noremap = true})
-- buffers
vim.api.nvim_set_keymap('n', '<Leader>fbl', '<cmd>Telescope buffers<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fbc', '<cmd>Telescope bcommits<CR>',
                        {noremap = true})
