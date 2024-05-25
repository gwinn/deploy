return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {   "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "lemminx",
                    "lua_ls",
                    "marksman",
                    "ruff_lsp",
                    "taplo",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            -- setup language servers
            lspconfig.gopls.setup({
                capabilities = capabilities
            })
            lspconfig.lemminx.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.marksman.setup({
                capabilities = capabilities
            })
            lspconfig.ruff_lsp.setup({
                capabilities = capabilities
            })
            lspconfig.taplo.setup({
                capabilities = capabilities
            })

            -- keymaps for help, go to definition, code actions & other
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
