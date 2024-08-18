return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- ensure_installed = {"lua", "javascript", "python", "c", "cpp", "css", "html"},
			auto_install = true, -- automatically installing a parser when encoutered a new languages
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
