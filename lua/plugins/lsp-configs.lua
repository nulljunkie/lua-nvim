-- this return a list of tables
-- NOTE mason installed packages are in ~/.local/share/nvim/mason/bin/
return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"clangd",
					"pyright",
					"pylsp",
					"html",
					-- "vuels",
					-- "volar",
					"tailwindcss",
					"bashls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			-- pyright/ or python-lsp-server (pylsp)
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			-- tsserver
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			-- clangd
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			-- html
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			-- vuejs
			-- lspconfig.vuels.setup({
			--     capabilities = capabilities,
			-- })
			-- vuejs
			-- lspconfig.volar.setup({
			--     capabilities = capabilities,
			-- })
			-- tailwindcss
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			-- bash
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require("lspsaga").setup({})

			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
			vim.keymap.set("n", "<leader>lh", "<Cmd>Lspsaga hover_doc<CR>", opts)
			vim.keymap.set("n", "gd", "<Cmd>Lspsaga goto_definition<CR>", opts)
			vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
			vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
			vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
		end,
	},
	{
		"luckasRanarison/tailwind-tools.nvim",
		event = "VeryLazy",
		opts = {
			document_color = {
				enabled = true, -- can be toggled by commands
				kind = "inline", -- "inline" | "foreground" | "background"
				inline_symbol = "󰝤 ", -- only used in inline mode
				debounce = 200, -- in milliseconds, only applied in insert mode
			},
			conceal = {
				enabled = false, -- can be toggled by commands
				min_length = nil, -- only conceal classes exceeding the provided length
				symbol = "󱏿", -- only a single character is allowed
				highlight = { -- extmark highlight options, see :h 'highlight'
					fg = "#38BDF8",
				},
			},
			cmp = {
				highlight = "foreground", -- color preview style, "foreground" | "background"
			},
			telescope = {
				utilities = {
					callback = function(name, class) end, -- callback used when selecting an utility class in telescope
				},
			},
		},
	},
}
