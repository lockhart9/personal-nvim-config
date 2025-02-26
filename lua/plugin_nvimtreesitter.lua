require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "ruby", "lua", "python", "json", "yaml", "javascript", "typescript", "rust" },
    sync_install = false,
    auto_install = false,
    ignore_install = { "vimdoc", },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = { "vimdoc", },
    },
}
