return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {
                "awk", "angular",
                "bash",
                "c", "cmake", "cpp", "css", "csv", "cuda",
                "dockerfile", "diff", "doxygen", "dtd",
                "erlang",
                "gitignore", "go", "gomod", "gosum", "graphql",
                "haskell", "html", "http",
                "ini",
                "java", "javascript", "jq", "json",
                "latex", "lua",
                "make", "markdown",
                "perl", "php", "phpdoc", "python",
                "query",
                "regex", "requirements", "rst", "ruby", "rust",
                "scss", "sql",
                "tcl", "toml", "twig", "typescript",
                "vim", "vimdoc", "vue",
                "xml",
                "yaml"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

