require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true, -- これを設定することでtree-sitterによるインデントを有効にできます
    }
}
