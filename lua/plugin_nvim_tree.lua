require("nvim-tree").setup {
    respect_buf_cwd = true
}

vim.keymap.set('n', '<Leader>3', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>4', '<cmd>NvimTreeFindFile<CR>', { noremap = true })
