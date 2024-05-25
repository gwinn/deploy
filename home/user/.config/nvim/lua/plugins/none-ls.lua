return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua, -- lua formatter
                null_ls.builtins.diagnostics.rubocop, -- ruby linter
                null_ls.builtins.formatting.rubocop, -- ruby formatter
                require("none-ls.diagnostics.eslint"), -- JS Linter
                null_ls.builtins.formatting.prettier, -- JS formatter
                null_ls.builtins.diagnostics.pylint.with({ -- Python linter
                    diagnostics_postprocess = function(diagnostic)
                        diagnostic.code = diagnostic.message_id
                    end,
                }),
                null_ls.builtins.formatting.isort, -- Python formatter (imports)
                null_ls.builtins.formatting.black, -- Python formatter (code)
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
