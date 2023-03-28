vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backup = false
vim.opt.number = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

vim.keymap.set('n', 'Q', '<cmd>tabp<CR>', {noremap = true})
vim.keymap.set('n', '<S-Tab>', '<cmd>tabn<CR>', {noremap = true})
vim.keymap.set('n', '(', '<cmd>copen<CR>', {noremap = true})
vim.keymap.set('n', ')', '<cmd>cclose<CR>', {noremap = true})
vim.keymap.set('n', 'I', '<cmd>cnext<CR>', {noremap = true})
vim.keymap.set('n', 'O', '<cmd>cprevious<CR>', {noremap = true})

vim.cmd [[colorscheme desert]]
