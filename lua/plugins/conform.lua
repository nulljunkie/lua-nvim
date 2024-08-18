-- NOTE: :ConformInfo <--- for troubleshooting and diagnostics
return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre", -- load conform when a file is loaded
		"BufNewFile",
	},

	config = function()
		local conform = require("conform")

		conform.setup({

			formatters_by_ft = {
				lua = { "stylua" },
				-- configure two formatters for python
				python = { { "isort", "black" } },
				-- python = { "ruff" },

				typescript = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
				javascript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				vue = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				astro = { { "prettierd", "prettier" } },
				tailwindcss = { { "prettierd", "prettier" } },
				markdown = { "prettier" },
			},

			format_on_save = {
				lsp_fallback = true, -- if a formatter not available, format through lsp
				async = false,
				timeout_ms = 500,
			},
		})

		-- Keymap
		vim.keymap.set({ "n", "v" }, "<leader>fm", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "format file or lines" })
	end,
}
