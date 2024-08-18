return {
    "numToStr/Comment.nvim",
    opts = {
        -- Add any options here if needed
        padding = true, -- Add a space b/w comment and the line
        sticky = true, -- Whether the cursor should stay at its position
        mappings = {
            basic = true, -- Basic mappings: gcc, gc, etc.
            extra = true, -- Extra mappings: gco, gcO, gcA
        },
    },
    lazy = false, -- Load the plugin immediately
    config = function(_, opts)
        require("Comment").setup(opts)
    end,
}
