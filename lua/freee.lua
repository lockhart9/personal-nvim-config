local autocmd_group = vim.api.nvim_create_augroup(
    "freee auto-commands",
    { clear = true }
)

local function callback_refresh(obj)
    vim.schedule(function()
        vim.cmd { cmd = "checktime" }
    end)
end

-- vim.api.nvim_create_autocmd(
--     { "BufWritePre" },
--     {
--         pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
--         desc = "フロントのprettier",
--         callback = function()
--             local filename = vim.api.nvim_buf_get_name(0)
--             vim.system({ "yarn", "prettier", "--write", filename, " > /dev/null" }, { text = true }, callback_refresh)
--         end,
--         group = autocmd_group,
--     }
-- )

-- JavaScript/TypeScript files の Prettier と ESLint を実行
vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    {
        pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
        desc = "フロントのprettierとeslint",
        callback = function()
            local filename = vim.api.nvim_buf_get_name(0)
            -- Prettierを実行
            vim.system(
                { "yarn", "prettier", "--write", filename },
                { text = true },
                function(obj)
                    -- Prettier実行後にESLintを実行
                    vim.system(
                        { "yarn", "eslint", "--fix", filename },
                        { text = true },
                        callback_refresh
                    )
                end
            )
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
            vim.system({ "bundle", "exec", "stree", "write", filename, " > /dev/null" }, { text = true },
                callback_refresh)
        end,
        group = autocmd_group,
    }
)

-- ファイル全体をrspec実行
vim.api.nvim_create_user_command(
    "FreeeRspecDoFile",
    function()
        local path = vim.fn.fnamemodify(vim.fn.expand('%'), ':.')
        vim.cmd('AsyncRun bin/rspec ' .. path)
    end,
    { desc = "Do rspec file" }
)

-- 行指定rspec実行
vim.api.nvim_create_user_command(
    "FreeeRspecDoCase",
    function()
        local line_number = vim.fn.line('.')
        local path = vim.fn.fnamemodify(vim.fn.expand('%'), ':.')
        vim.cmd('AsyncRun bin/rspec ' .. path .. ':' .. line_number)
    end,
    { desc = "Do rspec case" }
)
