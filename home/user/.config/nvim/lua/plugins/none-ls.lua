return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "gbprod/none-ls-luacheck.nvim",
        "gwinn/none-ls-jsonlint.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.code_actions.refactoring,
                require("none-ls.diagnostics.cpplint"), -- c/c++ linter
                require("none-ls-luacheck.diagnostics.luacheck"), -- lua linter
                null_ls.builtins.formatting.stylua,   -- lua formatter
                null_ls.builtins.formatting.markdownlint, -- markdown formatter
                null_ls.builtins.diagnostics.markdownlint.with({ -- markdown linter
                    args = {
                        "--disable",
                        "MD003",
                        "--stdin",
                    },
                }),
                null_ls.builtins.diagnostics.checkmake, -- makefile linter
                null_ls.builtins.formatting.prettier, -- json, yaml, js, html & other formatter
                require("none-ls.diagnostics.yamllint").with({ -- yaml linter

                    args = {
                        "-d",
                        "{extends: default, rules: {line-length: {max: 120}, truthy: disable, document-start: disable}}",
                        "--format",
                        "parsable",
                        "-",
                    },
                }),
                require("none-ls-jsonlint.diagnostics.jsonlint"), -- json linter
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
                null_ls.builtins.diagnostics.phpcs.with({ -- php linter
                    command = "./vendor/bin/phpcs",
                }),
                null_ls.builtins.diagnostics.phpmd.with({ -- php linter
                    command = "./vendor/bin/phpmd",
                }),
                null_ls.builtins.diagnostics.phpstan.with({ -- php linter
                    command = "./vendor/bin/phpstan",
                }),
                null_ls.builtins.formatting.phpcbf.with({ -- php formatter
                    command = ".vendor/bin/phpcbf",
                    extra_args = { "--tab-width=4" },
                }),
                null_ls.builtins.formatting.phpcsfixer.with({
                    command = ".vendor/bin/php-cs-fixer",
                    args = { "--no-interaction", "--quiet", "fix", "$FILENAME", "--using-cache=no" },
                }),
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
