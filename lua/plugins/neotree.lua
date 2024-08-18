return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    opts = {
        popup_border_style = 'rounded',
    },

    config = function(_, opts)
        vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle float<CR>', {})

        require("neo-tree").setup(opts)
    end
}
