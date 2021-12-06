local remaps = require 'ra.lsp.keymappings'
local util = require 'lspconfig.util'

return function(on_attach)
    return {
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
            remaps.set_typescript(client, bufnr)
            client.resolved_capabilities.document_formatting = false
        end,
        root_dir = function(fname)
            return util.root_pattern 'tsconfig.json'(fname)
                or util.root_pattern('jsconfig.json', '.git')(fname)
        end,
    }
end
