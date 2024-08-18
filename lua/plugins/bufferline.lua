return { 
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    config = function ()
        require("bufferline").setup()

        vim.api.nvim_set_keymap("n", "<tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "cycling between buffers" })
    end
}
