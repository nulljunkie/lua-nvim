-- lua/plugins/terminal.lua

return {
	"akinsho/nvim-toggleterm.lua",
	version = "*",
	opts = {
		size = 20,
		open_mapping = [[<c-\>]],
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = "2",
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "float",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved", -- shadow, double, curved, single, ....
			title_pos = "center",
			winblend = 0,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	},
	lazy = false, -- Load the plugin immediately
	config = function(_, opts)
		require("toggleterm").setup(opts)

		-- Create a table to store terminal instances
		local terminals = {}
		local lastTermId = 1

		-- Function to toggle terminal with a specific ID
		function _G.toggle_terminal(id)
			-- If the terminal doesn't exist, create a new one
			if not terminals[id] then
				terminals[id] = require("toggleterm.terminal").Terminal:new({ hidden = true })
			end

			-- Toggle the terminal
			terminals[id]:toggle()

			-- Automatically enter insert mode after toggling
			if terminals[id]:is_open() then
				vim.cmd("startinsert")
			end
		end

		-- Key mappings
		-- In normal mode, <leader>t toggles the terminal with ID 1
		vim.keymap.set("n", "<leader>t", function()
			toggle_terminal(lastTermId)
		end, { noremap = true, silent = true })

		-- In terminal mode, <leader>t toggles the current terminal, and "2<leader>t" toggles terminal 2, etc.
		for i = 1, 9 do
			vim.keymap.set("n", i .. "<leader>t", function()
				lastTermId = i
				toggle_terminal(lastTermId)
			end, { noremap = true, silent = true })
			vim.keymap.set("t", i .. "<leader>t", function()
				lastTermId = i
				toggle_terminal(lastTermId)
			end, { noremap = true, silent = true })
		end

		-- In terminal mode, <leader>t toggles the current terminal
		vim.keymap.set("t", "<leader>t", function()
			toggle_terminal(lastTermId)
		end, { noremap = true, silent = true })
	end,
}
