return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "jay-babu/mason-nvim-dap.nvim",
            "jay-babu/mason-null-ls.nvim",
        },
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({ -- LSP servers
                ensure_installed = {
                    "lua_ls",
                    "pylsp",
                    "gopls",
                    "rubocop",
                    "rust_analyzer",
                    "clangd",
                    "solargraph",
                    "intelephense",
                    "yamlls",
                    "jsonls",
                    "marksman",
                    "eslint",
                },
                automatic_installation = true,
            })
            require("mason-nvim-dap").setup({ -- DAP
                ensure_installed = {
                    "python",
                    "delve",
                    "cppdbg",
                    "php",
                },
                automatic_installation = true
            })
            require("mason-null-ls").setup({ -- Linters & formatters
                ensure_installed = {
                    "stylua",
                    "luacheck",
                    "black",
                    "isort",
                    "pylint",
                    "revive",
                    "goimports",
                    "golines",
                    "clang-format",
                    "cpplint",
                    "phpcs",
                    "phpmd",
                    "phpstan",
                    "phpcbf",
                    "php-cs-fixer",
                    "yamllint",
                    "jsonlint",
                    "prettier",
                    "markdownlint",
                    "checkmake",
                    "ast-grep"
                },
                automatic_installation = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local keymap = vim.keymap
            local buf = vim.lsp.buf
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })

            lspconfig.solargraph.setup({
                capabilities = capabilities,
            })

            lspconfig.gopls.setup({
                capabilities = capabilities,
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })

            lspconfig.intelephense.setup({
                capabilities = capabilities,
            })

            -- keymaps for help, go to definition, code actions & other
            keymap.set("n", "K", buf.hover, {})
            keymap.set("n", "gd", buf.definition, {})
            keymap.set("n", "gD", buf.declaration, {})
            keymap.set("n", "gi", buf.implementation, {})
            keymap.set("n", "gr", buf.references, {})
            keymap.set("n", "rn", buf.rename, {})
            keymap.set("n", "D", buf.type_definition, {})
            keymap.set({ "n", "v" }, "<leader>ca", buf.code_action, {})
        end,
    },
}
