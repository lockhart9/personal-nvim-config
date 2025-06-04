require('mason').setup()
require('mason-lspconfig').setup {}

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        }
    }
})

vim.lsp.config('sqlls', {
    settings = {
        connections = {
            {
                name = "hakobune",
                adapter = "mysql",
                host = "localhost",
                port = 3306,
                user = "root",
                password = "hakobune",
                database = "hakobune",
                projectPaths = { "/Users/shotaro/work/hakobune/hakobune" },
            },
            {
                name = "diamond",
                adapter = "mysql",
                host = "localhost",
                port = 3306,
                user = "root",
                password = "hakobune",
                database = "diamond",
                projectPaths = { "/Users/shotaro/work/hakobune/diamond-dust-server" },
            },
        }
    },
})

vim.lsp.config('terraformls', {
  -- cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "tf" },
})

vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
        },
    },
    capabilities = (function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        capabilities.textDocument.completion.completionItem.resolveSupport = {
            properties = {
                'documentation',
                'detail',
                'additionalTextEdits',
            }
        }
        return capabilities
    end)(),
})


-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('jsonls')
vim.lsp.enable('pylsp')
vim.lsp.enable('ts_ls')
vim.lsp.enable('sqlls')
vim.lsp.enable('terraformls')
vim.lsp.enable('gopls')
vim.lsp.enable('tailwindcss')
vim.lsp.enable('solargraph')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('html')
