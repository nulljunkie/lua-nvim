return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-ts-autotag").setup({
			filetypes = { "html", "javascript", "typescript", "vue", "tsx", "jsx", "xml" },
		})
	end,
}

-- Before        Input         After
-- ------------------------------------
-- <div           >              <div></div>
-- <div></div>    ciwspan<esc>   <span></span>
-- ------------------------------------
