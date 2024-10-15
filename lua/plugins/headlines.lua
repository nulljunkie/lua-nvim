-- Use for Markdown/Headline
vim.cmd([[highlight Bullet guifg=#333333]])
vim.cmd([[highlight Headline1 guibg=#111111 guifg=#d93929 gui=bold]])
vim.cmd([[highlight Headline2 guibg=#111111 guifg=#00ffa5 gui=bold]])
vim.cmd([[highlight Headline3 guibg=#111111 guifg=#00ebd7]])
vim.cmd([[highlight Headline4 guibg=#111111 guifg=#00d5f2 gui=italic]])
vim.cmd([[highlight CodeBlock guibg=#111111]])
vim.cmd([[highlight Dash guibg=#232323 guifg=#222222 gui=bold]])
vim.cmd([[highlight Quote guifg=#ffffc9]])

return {
	event = "VeryLazy",
	"lukas-reineke/headlines.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("headlines").setup({
			markdown = {
				bullets = { "", "✸", "◉", "✿" },
				bullet_highlights = {
					"Bullet",
				},
				quote_highlight = "Quote",
				headline_highlights = {
					"Headline1",
					"Headline2",
					"Headline3",
					"Headline4",
					"CodeBlock",
					"Dash",
				},
			},
		})
	end,
}
