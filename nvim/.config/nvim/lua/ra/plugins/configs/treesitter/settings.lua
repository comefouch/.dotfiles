local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        "typescript", "cpp", "cmake", "bash", "latex", "python", "toml", "yaml",
        "html", "tsx", "lua", "json", "rust", "php", "css", "javascript",
        "graphql"
    },
    highlight = {enable = true},
    matchup = {enable = true}
}
