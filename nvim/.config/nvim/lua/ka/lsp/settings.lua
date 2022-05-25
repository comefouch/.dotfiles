local lsp_installer_servers = require 'nvim-lsp-installer'
local remaps = require('ka.lsp.keymappings')
local presentCmpNvimLsp, cmpNvimLsp = pcall(require, 'cmp_nvim_lsp')

vim.lsp.set_log_level('error')

local function on_attach(client, bufnr)
    remaps.set_default(client, bufnr)

    -- adds beatiful icon to completion
    require'lspkind'.init()

    -- add signature autocompletion while typing
    require'lsp_signature'.on_attach({
        floating_window = false,
        timer_interval = 500
    })
end

vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {spacing = 0, prefix = '■'},

        signs = true,

        update_in_insert = false
    })

local capabilities = {};

if presentCmpNvimLsp then
    capabilities = vim.tbl_extend('keep', capabilities,
                                  cmpNvimLsp.update_capabilities(
                                      vim.lsp.protocol
                                          .make_client_capabilities()))
end

local default_lsp_config = {on_attach = on_attach, capabilities}

local servers = {
    -- efm = require('ka.lsp.servers.efm')(),
    bashls = {},
    yamlls = {},
    jsonls = {},
    tsserver = require('ka.lsp.servers.tsserver')(on_attach),
    html = {},
    cssls = {},
    sumneko_lua = require('ka.lsp.servers.sumneko_lua')(),
    dockerls = {},
    intelephense = {},
    phpactor = {},
    svelte = {},
    rust_analyzer = {}
}

for serverName, config in pairs(servers) do
    local ok, server = lsp_installer_servers.get_server(serverName)
    if ok then
        if not server:is_installed() then
            print('installing ' .. serverName)
            server:install()
        end
    end

    server:setup(vim.tbl_deep_extend('force', default_lsp_config, config))
    vim.cmd [[ do User LspAttachBuffers ]]
end
