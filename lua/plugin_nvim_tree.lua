require("nvim-tree").setup {
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
    },
}

vim.keymap.set('n', '<Leader>3', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>4', '<cmd>NvimTreeFindFile<CR>', { noremap = true })
