local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

return require('packer').startup(function(use)
    -- packer - plugin manager
    use 'wbthomason/packer.nvim'

    -- telescope - fuzzy finding and more
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
        },
        config = function() require 'ka.plugins.configs.telescope' end
    }

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require 'ka.plugins.configs.nvim_tree' end
    }

    -- treesitter - syntax highlighting and more
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require 'ka.plugins.configs.treesitter' end,
        run = function() vim.cmd [[TSUpdate]] end
    }
    use {'haringsrob/nvim_context_vt', after = 'nvim-treesitter'}

    -- lsp
    use 'neovim/nvim-lspconfig' -- lspconfig
    use {'williamboman/nvim-lsp-installer'} -- installer
    use {'tami5/lspsaga.nvim', after = 'nvim-lspconfig'}
    use {'onsails/lspkind-nvim', after = 'nvim-lspconfig'} -- icons
    use {'ray-x/lsp_signature.nvim', after = 'nvim-lspconfig'} -- help on function signature
    use {'jose-elias-alvarez/nvim-lsp-ts-utils', after = 'nvim-lspconfig'} -- typescript utils

    -- snippets
    use {
        'L3MON4D3/LuaSnip',
        requires = {'rafamadriz/friendly-snippets'},
        config = function() require('ka.plugins.configs.snippets') end
    }

    -- completion
    use {
        'hrsh7th/nvim-cmp',
        config = function() require 'ka.plugins.configs.nvim_cmp' end,
        event = 'InsertEnter'
    }
    use({'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'})
    use({'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp'})
    use({'hrsh7th/cmp-buffer', after = 'nvim-cmp'})
    use({'hrsh7th/cmp-path', after = 'nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp'})

    -- renamer
    use {
        'filipdutescu/renamer.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function() require('ka.plugins.configs.renamer') end
    }

    -- Brackets helpers
    use({
        'windwp/nvim-autopairs',
        after = 'nvim-cmp',
        config = function() require('ka.plugins.configs.autopairs') end
    })
    use({
        'luochen1990/rainbow',
        config = function() vim.g.rainbow_active = 1 end
    })

    -- git
    use {
        'tpope/vim-fugitive',
        config = function() require 'ka.plugins.configs.fugitive' end
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require 'ka.plugins.configs.gitsigns' end
    }

    -- color codes
    use 'gko/vim-coloresque'

    -- colorschemes
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'

    -- statusline
    -- use {
    --     'NTBBloodbath/galaxyline.nvim',
    --     config = function() require 'ka.plugins.configs.galaxyline' end
    -- }
    use {
        'nvim-lualine/lualine.nvim',
        config = function() require 'ka.plugins.configs.lualine' end
    }

    if packer_bootstrap then require('packer').sync() end
end)
