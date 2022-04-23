vim.api.nvim_create_augroup("AutoUpdatePlugins", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "plugins/**/*.lua", command = "source <afile> | PackerSync", group = 'AutoUpdatePlugins' })

vim.api.nvim_create_augroup("Highlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", { command = "silent! lua vim.highlight.on_yank() {higroup='IncSearch', timeout=400}", group = 'Highlight' })
