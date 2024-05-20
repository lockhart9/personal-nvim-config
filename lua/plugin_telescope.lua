require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = false,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        },
        file_browser = {
            depth = 1
        },
    },
    defaults = {
        mappings = {
            n = {
                ['q'] = 'close'
            }
        },
        pickers = {
            current_buffer_fuzzy_find = {
                sorting_strategy = 'ascending',
            },
        },
        initial_mode = 'normal',
    },
}

require('telescope').load_extension('fzf')

vim.keymap.set('n', '<Leader>j', '<cmd>Telescope find_files<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>v', '<cmd>Telescope oldfiles<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>g', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>q', '<cmd>Telescope quickfix<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>r', '<cmd>Telescope lsp_references<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>d', '<cmd>Telescope lsp_definitions<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>t', '<cmd>Telescope lsp_type_definitions<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>b', '<cmd>Telescope buffers<CR>', { noremap = true })
