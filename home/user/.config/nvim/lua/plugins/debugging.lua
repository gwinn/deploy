return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		local keymap = vim.keymap

		dapui.setup()
		require("dap-go").setup()

		-- ui
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- keymaps
		keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)
		keymap.set("n", "<F10>", function()
			dap.step_over()
		end)
		keymap.set("n", "<F11>", function()
			dap.step_into()
		end)
		keymap.set("n", "<F12>", function()
			dap.step_out()
		end)
		keymap.set("n", "<Leader>dt", function()
			dap.toggle_breakpoint()
		end)
		keymap.set("n", "<Leader>dr", function()
			dap.repl.open()
		end)
		keymap.set("n", "<Leader>dl", function()
			dap.run_last()
		end)
		keymap.set({ "n", "v" }, "<Leader>dh", function()
			require("dap.ui.widgets").hover()
		end)
		keymap.set({ "n", "v" }, "<Leader>dp", function()
			require("dap.ui.widgets").preview()
		end)
		keymap.set("n", "<Leader>df", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.frames)
		end)
		keymap.set("n", "<Leader>ds", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.scopes)
		end)
	end,
}
