local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd([[
  if &compatible
    set nocompatible
  endif
  filetype plugin indent on
  syntax enable
]])


vim.g.python3_host_prog = vim.env.PYENV_ROOT .. '/versions/neovim/bin/python'


-- Example using a list of specs with the default options
vim.g.mapleader = "_"       -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'dhruvasagar/vim-table-mode',
    'skywind3000/asyncrun.vim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
})


require('plugin_telescope')
require('plugin_vim_table_mode')
require('plugin_mason')
require('plugin_nvim_cmp')
require('commons')
