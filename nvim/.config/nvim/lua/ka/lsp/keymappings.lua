local M = {}

function M.set_default(client, bufnr)

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- gives definition & references
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>tt',
                                "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>",
                                {noremap = true})
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>tt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

    if client.server_capabilities.definitionProvider then
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD',
                                    "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>",
                                    {noremap = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd',
                                    '<cmd>lua vim.lsp.buf.definition()<CR>',
                                    {noremap = true})
    end
    -- if client.server_capabilities.declarationProvider then
    -- map('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    -- end
    if client.server_capabilities.implementationProvider then
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ti',
                                    '<cmd>lua vim.lsp.buf.implementation()<CR>',
                                    {noremap = true})
    end
    if client.server_capabilities.referencesProvider then
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>tr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>tr',
                                    "<cmd>lua require('telescope.builtin').lsp_references()<CR>",
                                    {noremap = true})
    end

    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>th', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>th',
                                "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>",
                                {noremap = true})

    if client.server_capabilities.documentSymbolProvider then
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>to', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>to',
                                    "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
                                    {noremap = true})
    end

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ts',
                                "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>",
                                {noremap = true})

    -- if client.server_capabilities.workspaceSymbolProvider then
    --   map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)
    -- end

    if client.server_capabilities.codeActionProvider then
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>fa', '<cmd>lua vim.lsp.buf.code_action()<CR>', 'lsp', 'lsp_', '')
        -- vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>fa', "<cmd>'<,'>lua vim.lsp.buf.range_code_action()<cr>", 'lsp', 'lsp_', '')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fa',
                                    "<cmd>lua require('telescope.builtin').lsp_code_actions({ timeout = 1000 })<CR>",
                                    {noremap = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>fa',
                                    "<cmd>lua require('telescope.builtin').lsp_range_code_actions({ timeout = 1000 })<CR>",
                                    {noremap = true})
        --[[ vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fa', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>fa', "<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>", opts) ]]
    end

    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>fe', '<cmd>lua vim.diagnostic.set_loclist()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>fe', '<cmd>:LspDiagnostics 0<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fe',
                                "<cmd>lua require('ra.lsp.functions').show_diagnostics()<CR>",
                                {noremap = true})
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>fE', '<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fE',
                                "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>",
                                {noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[e',
                                '<cmd>lua vim.diagnostic.goto_prev()<CR>',
                                {noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']e',
                                '<cmd>lua vim.diagnostic.goto_next()<CR>',
                                {noremap = true})
    --[[ vim.api.nvim_buf_set_keymap(bufnr, 'n', '[e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", 'lsp', 'lsp_previous_diagnostic', 'Previous dagnostic')
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", 'lsp', 'lsp_next_diagnostic', 'Next diagnostic'); ]]

    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>lf',
                                    '<cmd>lua vim.lsp.buf.formatting()<CR>',
                                    {noremap = true})
    elseif client.server_capabilities.documentRangeFormattingProvider then
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>lf',
                                    '<cmd>lua vim.lsp.buf.formatting()<CR>',
                                    {noremap = true})
    end

    if client.server_capabilities.renameProvider then
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>rr','<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>rr', "<cmd>lua require('lspsaga.rename').rename()<CR>", 'lsp', 'lsp_rename', 'Rename')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rr',
                                    "<cmd>lua require('renamer').rename()<cr>",
                                    {noremap = true})
    end

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>flc',
                                ':lua print(vim.inspect(vim.lsp.get_active_clients()))<CR>',
                                {noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fll',
                                ":lua print(vim.lsp.get_log_path())<CR>",
                                {noremap = true})
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n','<leader>fll', ":lua vim.cmd('e'..vim.lsp.get_log_path())<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fli', ':LspInfo()<CR>',
                                {noremap = true})

    -- map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
    -- map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
    -- map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
    -- map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
    -- map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
    -- map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
    -- map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
    -- map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
end

function M.set_typescript(client, bufnr)
    local ts_utils = require("nvim-lsp-ts-utils")

    -- defaults
    ts_utils.setup {}

    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fo", ":TSLspOrganize<CR>",
                                {noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fc",
                                ":TSLspFixCurrent<CR>", {noremap = true})
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", 'lsp', 'lsp_', '')
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fi", ":TSLspImportAll<CR>",
                                {noremap = true})
end

return M
