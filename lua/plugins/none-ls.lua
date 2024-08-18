return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- install these linters and formatter with mason first
				null_ls.builtins.formatting.stylua, -- for lua
				null_ls.builtins.formatting.black, -- black (formatter)  for python
				-- null_ls.builtins.diagnostics.flake8, -- flake8 (linter) python
				null_ls.builtins.formatting.prettier, -- prettier formatter for css, js, html, etc
			},
		})

		vim.keymap.set("n", "<leader>s", vim.lsp.buf.format, {})
	end,
}
