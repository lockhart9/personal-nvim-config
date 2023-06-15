vim.cmd([[
  if &compatible
    set nocompatible
  endif
]])

vim.g.python3_host_prog = vim.env.PYENV_ROOT .. '/versions/neovim/bin/python'
vim.g.loaded_python_provider = 0

-- vim.g.node_host_prog = vim.env.HOME .. '

vim.g.mapleader = '_'

vim.cmd([[
  filetype plugin indent on
  syntax enable
]])

require('commons')
require('plugins')
require('plugin_telescope')
require('plugin_vim_table_mode')
require('plugin_mason')
require('plugin_nvimtreesitter')
require('plugin_symbols_outline')
require('plugin_nvim_tree')
require('plugin_aerial')
require('plugin_venn')
