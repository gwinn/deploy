return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.code_actions.refactoring,
                null_ls.builtins.formatting.stylua, -- lua formatter
                null_ls.builtins.diagnostics.pylint.with({ -- python linter
                    prefer_local = ".venv/bin",
                    diagnostics_postprocess = function(diagnostic)
                        diagnostic.code = diagnostic.message_id
                    end,
                }),
                null_ls.builtins.formatting.isort, -- python formatter
                null_ls.builtins.formatting.black, -- python formatter
                null_ls.builtins.diagnostics.rubocop, -- ruby linter
                null_ls.builtins.formatting.rubocop, -- ruby formatter
                null_ls.builtins.diagnostics.revive, -- go linter
                null_ls.builtins.formatting.goimports, -- go formatter
                null_ls.builtins.formatting.golines, -- go formatter
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
