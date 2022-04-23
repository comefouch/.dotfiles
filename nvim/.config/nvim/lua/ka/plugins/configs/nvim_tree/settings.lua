require"nvim-web-devicons".setup {
    override = {
        html = {icon = "", color = "#DE8C92", name = "html"},
        css = {icon = "", color = "#61afef", name = "css"},
        js = {icon = "", color = "#EBCB8B", name = "js"},
        ts = {icon = "ﯤ", color = "#519ABA", name = "ts"},
        kt = {icon = "󱈙", color = "#ffcb91", name = "kt"},
        png = {icon = " ", color = "#BD77DC", name = "png"},
        jpg = {icon = " ", color = "#BD77DC", name = "jpg"},
        jpeg = {icon = " ", color = "#BD77DC", name = "jpeg"},
        mp3 = {icon = "", color = "#C8CCD4", name = "mp3"},
        mp4 = {icon = "", color = "#C8CCD4", name = "mp4"},
        out = {icon = "", color = "#C8CCD4", name = "out"},
        Dockerfile = {icon = "", color = "#b8b5ff", name = "Dockerfile"},
        rb = {icon = "", color = "#ff75a0", name = "rb"},
        vue = {icon = "﵂", color = "#7eca9c", name = "vue"},
        py = {icon = "", color = "#a7c5eb", name = "py"},
        toml = {icon = "", color = "#61afef", name = "toml"},
        lock = {icon = "", color = "#DE6B74", name = "lock"},
        zip = {icon = "", color = "#EBCB8B", name = "zip"},
        xz = {icon = "", color = "#EBCB8B", name = "xz"},
        deb = {icon = "", color = "#a3b8ef", name = "deb"},
        rpm = {icon = "", color = "#fca2aa", name = "rpm"}
    }
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

-- default mappings
local list = {
    {key = {'<CR>', 'o', '<2-LeftMouse>', 'r'}, cb = tree_cb('edit')},
    {key = {'<2-RightMouse>', '<C-]>'}, cb = tree_cb('cd')},
    {key = '<C-v>', cb = tree_cb('vsplit')},
    {key = '<C-x>', cb = tree_cb('split')},
    {key = '<C-t>', cb = tree_cb('tabnew')},
    {key = '<', cb = tree_cb('prev_sibling')},
    {key = '>', cb = tree_cb('next_sibling')},
    {key = 'P', cb = tree_cb('parent_node')},
    {key = '<BS>', cb = tree_cb('close_node')},
    {key = '<S-CR>', cb = tree_cb('close_node')},
    {key = '<Tab>', cb = tree_cb('preview')},
    {key = 'K', cb = tree_cb('first_sibling')},
    {key = 'J', cb = tree_cb('last_sibling')},
    {key = 'I', cb = tree_cb('toggle_ignored')},
    {key = 'H', cb = tree_cb('toggle_dotfiles')},
    {key = 'L', cb = tree_cb('refresh')}, {key = 'a', cb = tree_cb('create')},
    {key = 'd', cb = tree_cb('remove')}, {key = 'l', cb = tree_cb('rename')},
    {key = '<C-r>', cb = tree_cb('full_rename')},
    {key = 'x', cb = tree_cb('cut')}, {key = 'c', cb = tree_cb('copy')},
    {key = 'p', cb = tree_cb('paste')}, {key = 'y', cb = tree_cb('copy_name')},
    {key = 'Y', cb = tree_cb('copy_path')},
    {key = 'gy', cb = tree_cb('copy_absolute_path')},
    {key = '[c', cb = tree_cb('prev_git_item')},
    {key = ']c', cb = tree_cb('next_git_item')},
    {key = 'S', cb = tree_cb('system_open')},
    {key = '-', cb = tree_cb('close')}, {key = 'q', cb = tree_cb('close')},
    {key = 'g?', cb = tree_cb('toggle_help')}
}

vim.g.nvim_tree_show_icons = {git = 0, folders = 1, files = 1}

vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_group_empty = 1

require'nvim-tree'.setup {
    open_on_setup = false,
    open_on_tab = false,
    update_cwd = false,
    auto_close = false,
    follow = 1,
    update_focused_file = {enable = true, update_cwd = false, ignore_list = {}},
    view = {
        width = 30,
        side = 'left',
        auto_resize = false,
        mappings = {custom_only = true, list = list}
    },
    show_icons = {git = true, folders = true, files = true},
    nvim_tree_quit_on_open = 1
}
