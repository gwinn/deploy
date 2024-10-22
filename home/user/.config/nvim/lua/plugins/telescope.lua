
return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local builtin = require("telescope.builtin")
            local keymap = vim.keymap
            keymap.set('n', '<leader>ff', builtin.find_files, {})
            keymap.set('n', '<leader>fg', builtin.live_grep, {})
            keymap.set('n', '<leader>fb', builtin.buffers, {})
            keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

