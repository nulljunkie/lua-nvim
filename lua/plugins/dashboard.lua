return {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    opts = {
        theme = "doom",
        config = {
            header = {
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                     ]],
                [[       ████ ██████           █████      ██                     ]],
                [[      ███████████             █████                             ]],
                [[      █████████ ███████████████████ ███   ███████████   ]],
                [[     █████████  ███    █████████████ █████ ██████████████   ]],
                [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
            },
            center = {
                {
                    icon = "",
                    icon_hl = "group",
                    desc = "description",
                    desc_hl = "group",
                    key = "shortcut key in dashboard buffer not keymap !!",
                    key_hl = "group",
                    key_format = " [%s]", -- `%s` will be substituted with value of `key`
                    action = "",
                },
            },

            buttons = {
                { "  Recent", "", "Telescope oldfiles" },
                { "  Projects", "", "Telescope projects" },
                { "  Themes  ", "", "Telescope themes" },
                -- { "  Mappings", "", "NvCheatsheet" },
                { "  Keymaps", "", "Telescope keymaps" },
            },

            footer = {}, -- Add footer content here
        },
    },
    lazy = false, -- Load the plugin immediately
    config = function(_, opts)
        local db = require("dashboard")
        db.setup(opts)
    end,
}
