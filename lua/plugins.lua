-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    -- use 'nvim-telescope/telescope.nvim'
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-telescope/telescope-live-grep-args.nvim" },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-file-browser.nvim'
    -- use 'renerocksai/telekasten.nvim'
    use 'dhruvasagar/vim-table-mode'
    use 'skywind3000/asyncrun.vim'
    use 'lockhart9/vim-grep-shortcut'
    use 'img-paste-devs/img-paste.vim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    --    use {
    --        'nvim-treesitter/nvim-treesitter',
    --        run = function()
    --            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    --            ts_update()
    --        end,
    --    }
    use 'simrat39/symbols-outline.nvim'
    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }
    use "jbyuki/venn.nvim"
    use { 'akinsho/bufferline.nvim', tag = "v4.*", requires = 'nvim-tree/nvim-web-devicons' }

    use 'preservim/vim-markdown'
    -- use "~/work/jin"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use { "catppuccin/nvim", as = "catppuccin" }
    use '~/work/nvim/ponzu'
end)
