vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backup = false
vim.opt.number = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.conceallevel = 2
-- vim.opt.cursorcolumn = true

vim.keymap.set('n', 'Q', '<cmd>tabp<CR>', {noremap = true})
vim.keymap.set('n', '<S-Tab>', '<cmd>tabn<CR>', {noremap = true})
vim.keymap.set('n', '(', '<cmd>copen<CR>', {noremap = true})
vim.keymap.set('n', ')', '<cmd>cclose<CR>', {noremap = true})
vim.keymap.set('n', 'I', '<cmd>cnext<CR>', {noremap = true})
vim.keymap.set('n', 'O', '<cmd>cprevious<CR>', {noremap = true})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CR>', {noremap = true})

-- ショートかっと
vim.keymap.set('i', '<c-r><c-r>', '<c-r><c-">', {noremap = true})

--- cargoコマンドのショートカット
vim.keymap.set('n', '<Leader>1', '<cmd>AsyncRun cargo clippy<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>2', '<cmd>AsyncRun cargo test<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>22', '<cmd>AsyncRun cargo llvm-cov<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>4', '<cmd>AsyncRun cargo run<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>5', '<cmd>AsyncRun cargo build<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>6', '<cmd>AsyncRun cargo build --release<CR>', {noremap = true})


-- vim.cmd [[colorscheme habamax]]
vim.cmd [[colorscheme delek]]

vim.keymap.set('n', '<c-g>', '<CMD>diffget<CR>', {noremap = true})
vim.keymap.set('n', '<c-p>', '<CMD>diffput<CR>', {noremap = true})


-- markdown
vim.g.vim_markdown_folding_disabled = 1

vim.cmd([[
    autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
    " there are some defaults for image directory and image name, you can change them
    let g:mdip_imgdir = 'img'
    let g:mdip_imgname = 'image'
]])
