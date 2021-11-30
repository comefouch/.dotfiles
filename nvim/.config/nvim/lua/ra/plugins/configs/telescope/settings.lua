local actions = require 'telescope.actions'
local telescope = require 'telescope'
local functions = require 'ra.utils.functions'

telescope.setup {
    defaults = {
        sorting_strategy = 'descending',
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {
            '.backup', '.swap', '.langservers', '.session', '.undo', '*.git',
            'node_modules', 'vendor', '.cache', '.vscode-server', '.Desktop',
            '.Documents', 'classes'
        },
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        color_devicons = true,
        set_env = {['COLORTERM'] = 'truecolor'},
        file_previewer = require'telescope.previewers'.cat.new,
        grep_previewer = require'telescope.previewers'.vimgrep.new,
        qflist_previewer = require'telescope.previewers'.qflist.new
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = 'smart_case'
        }
    }
}

if functions.is_linux() then telescope.load_extension('fzf') end
telescope.load_extension('mapper')
