local actions = require 'telescope.actions'
local telescope = require 'telescope'
local functions = require 'ra.utils.functions'

telescope.setup {}

if functions.is_linux() then telescope.load_extension('fzf') end
telescope.load_extension('mapper')
