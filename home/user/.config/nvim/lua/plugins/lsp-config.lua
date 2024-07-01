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
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"gopls",
					"rubocop",
					"rust_analyzer",
					"clangd",
                    "solargraph",
				},
				automatic_installation = true,
			})
			require("mason-nvim-dap").setup({
				ensure_installed = {
					"python",
					"delve",
					"cppdbg",
					"php",
				},
                automatic_installation = true
			})
			require("mason-null-ls").setup({
				ensure_installed = {
                    "stylua",
					"black",
					"isort",
					"pylint",
					"revive",
					"goimports",
					"golines",
					"clang-format",
					"cpplint",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.pylsp.setup({
				capabilities = capabilities,
			})

			-- keymaps for help, go to definition, code actions & other
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "D", vim.lsp.buf.type_definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
