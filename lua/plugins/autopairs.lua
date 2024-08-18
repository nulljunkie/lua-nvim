return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}

        -- Integration with nvim-cmp
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        local handlers = require('nvim-autopairs.completion.handlers')

        -- Add parentheses automatically after selecting function or method completion item
        cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done({
                filetypes = {
                    -- Configuration for all filetypes
                    ["*"] = {
                        ["("] = {
                            kind = {
                                cmp.lsp.CompletionItemKind.Function,
                                cmp.lsp.CompletionItemKind.Method,
                            },
                            handler = handlers["*"]
                        }
                    },
                    -- Custom configuration for Lua filetype
                    lua = {
                        ["("] = {
                            kind = {
                                cmp.lsp.CompletionItemKind.Function,
                                cmp.lsp.CompletionItemKind.Method
                            },
                            handler = function(char, item, bufnr, rules, commit_character)
                                -- Your custom handler function. Inspect with print(vim.inspect{char, item, bufnr, rules, commit_character})
                            end
                        }
                    },
                    -- Disable for tex filetype
                    tex = false
                }
            })
        )
    end,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}
