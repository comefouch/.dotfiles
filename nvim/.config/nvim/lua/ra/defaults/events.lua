addEventListener('LuaHighlight', {'TextYankPost *'},
                 function() require'vim.highlight'.on_yank {timeout = 200} end)
