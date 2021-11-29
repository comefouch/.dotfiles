local install_path = vim.fn.stdpath('data') ..
                         '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup {
    function(use)
        -- packer
        use 'wbthomason/packer.nvim'
        -- telescope
        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
            config = function()
                require 'ra.plugins.configs.telescope'
            end
        }
        use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
        -- file tree
        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
            config = function()
                require 'ra.plugins.configs.nvim_tree'
            end
        }
        -- treesitter
        use {
            'nvim-treesitter/nvim-treesitter',
            config = function()
                require 'ra.plugins.configs.treesitter'
            end,
            run = function() vim.cmd [[TSUpdate]] end
        }
        use 'haringsrob/nvim_context_vt'
        -- lsp
        use 'neovim/nvim-lspconfig' -- lspconfig
        use 'williamboman/nvim-lsp-installer' -- installer
        use 'tjdevries/lsp_extensions.nvim'
        use 'tami5/lspsaga.nvim'
        use 'onsails/lspkind-nvim' -- icons
        use 'ray-x/lsp_signature.nvim' -- help on function signature
        use 'jose-elias-alvarez/nvim-lsp-ts-utils' -- typescript utils
        -- completion
        use {
            'L3MON4D3/LuaSnip',
            requires = {'rafamadriz/friendly-snippets'},
            config = function()
                require('ra.plugins.configs.snippets')
            end
        }

        use {
            'hrsh7th/nvim-cmp',
            config = function() require 'ra.plugins.configs.cmp' end,
            event = 'InsertEnter'
        }

        use({'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'})

        use({'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp'})

        use({'hrsh7th/cmp-buffer', after = 'nvim-cmp'})

        use({'hrsh7th/cmp-path', after = 'nvim-cmp'})

        use({'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp'})

        use({
            'windwp/nvim-autopairs',
            after = 'nvim-cmp',
            config = function()
                require('ra.plugins.configs.autopairs')
            end
        })
        -- git
        use {
            'tpope/vim-fugitive',
            config = function() require 'ra.plugins.configs.fugitive' end
        }
        use {
            'lewis6991/gitsigns.nvim',
            config = function() require 'ra.plugins.configs.gitsigns' end
        }
        -- renamer
        use {
            'filipdutescu/renamer.nvim',
            requires = {{'nvim-lua/plenary.nvim'}},
            config = function() require('ra.plugins.configs.renamer') end
        }
        -- mapper
        use {
            'lazytanuki/nvim-mapper',
            config = function()
                require 'ra.plugins.configs.nvim_mapper'
            end,
            before = 'telescope.nvim'
        }
        -- color codes
        use 'gko/vim-coloresque'
        -- colorschemes
        use 'gruvbox-community/gruvbox'
        use 'kristijanhusak/vim-hybrid-material'
        use 'folke/tokyonight.nvim'
        -- statusline
        use {
            'NTBBloodbath/galaxyline.nvim',
            config = function()
                require 'ra.plugins.configs.galaxyline'
            end
        }
    end
}
