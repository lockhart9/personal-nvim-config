local autocmd_group = vim.api.nvim_create_augroup(
    "freee auto-commands",
    { clear = true }
)

local function callback_refresh(obj)
    vim.schedule(function()
        vim.cmd { cmd = "checktime" }
    end)
end

vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    {
        pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
        desc = "フロントのprettier",
        callback = function()
            local filename = vim.api.nvim_buf_get_name(0)
            vim.system({ "yarn", "prettier", "--write", filename, " > /dev/null" }, { text = true }, callback_refresh)
        end,
        group = autocmd_group,
    }
)

vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    {
        pattern = { "*.rb" },
        desc = "ruby stree",
        callback = function()
            local filename = vim.api.nvim_buf_get_name(0)
            vim.system({ "bundle", "exec", "stree", "write", filename, " > /dev/null" }, { text = true }, callback_refresh)
        end,
        group = autocmd_group,
    }
)
