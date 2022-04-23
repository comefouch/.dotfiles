local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        "typescript", "bash", "toml", "yaml", "html", "tsx", "lua", "json",
        "rust", "php", "css", "javascript", "svelte"
    },
    highlight = {enable = true},
    matchup = {enable = true}
}
