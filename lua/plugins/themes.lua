return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                dim_inactive = {
                    enabled = true, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.45, -- percentage of the shade to apply to the inactive window
                },
                integrations = {
                    cmp = true,
                    dap = {
                        enabled = true,
                        enable_ui = true, -- enable nvim-dap-ui
                    },
                    flash = true,
                    gitsigns = true,
                    indent_blankline = {
                        enabled = true,
                        scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
                        colored_indent_levels = false,
                    },
                    lsp_trouble = true,
                    markdown = true,
                    mason = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "undercurl" },
                            hints = { "undercurl" },
                            warnings = { "undercurl" },
                            information = { "undercurl" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                    neotest = true,
                    noice = true,
                    notify = true,
                    octo = true,
                    overseer = true,
                    semantic_tokens = true,
                    telescope = {
                        enabled = true,
                    },
                    treesitter = true,
                    ts_rainbow2 = true,
                    ufo = true,
                    which_key = true,
                },
            })
            -- vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },

    {
        "projekt0n/github-nvim-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("github-theme").setup({
                -- ...
            })
            -- XXX:
            -- vim.cmd.colorscheme("github_dark_high_contrast")
            -- vim.cmd.colorscheme("github_dark_dimmed")
            vim.cmd.colorscheme("github_dark_colorblind")
        end,
    },
}
