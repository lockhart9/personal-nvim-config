require("symbols-outline").setup {
    autofold_depth = 1
}

vim.keymap.set('n', '<Leader>o', '<cmd>SymbolsOutline<CR>', { noremap = true })
