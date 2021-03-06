-- disable netrw
vim.g.loaded_netrw = 1 -- disable default file explorer
vim.g.loaded_netrwPlugin = 1
vim.o.showmatch = true
vim.o.hidden = true
vim.o.errorbells = false
-- timeout duration
vim.o.timeoutlen = 1300 -- increase timeoutlens temporarily, because I need to learn
-- linenumbering
vim.o.number = true
vim.o.numberwidth = 2 -- do not need 4 with relativenumber
vim.o.relativenumber = true
vim.o.mouse = 'a'
-- indentation and line wrap
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.smarttab = true
-- improve search
vim.o.smartcase = true
vim.o.incsearch = true
-- live preview of substitutions
vim.o.inccommand = 'split'
-- undofile is great
vim.o.undofile = true
-- scroll offset
vim.o.scrolloff = 8
-- space for displaying messages
vim.o.cmdheight = 1
-- shorter update time
vim.o.updatetime = 50
-- better completion
vim.o.completeopt = 'menu,menuone,noselect'
vim.cmd [[set shortmess+=c]]
-- columns to display lsp and git info
vim.o.signcolumn = 'yes:2'
-- disble ugly cursor lines
vim.o.cursorline = false
vim.o.cursorcolumn = false
-- done by status bar
vim.o.showmode = false
-- fold
vim.wo.foldlevel = 0
vim.wo.foldcolumn = '0'
vim.o.foldlevelstart = 99
-- using treesitter for folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- shows spaces
vim.o.list = true
-- I like to see end of line, trailing spaces, and other invinsible characters
vim.o.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,nbsp:·'
