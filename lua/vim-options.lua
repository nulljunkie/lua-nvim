vim.cmd("set nu") -- or vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus" -- make sure to downlaod a clipboard xclip or any other
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Override ignorecase if search pattern contains uppercase letters
vim.opt.incsearch = true -- Show matches as you type
vim.opt.hlsearch = true -- Highlight search results
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.signcolumn = "yes:1" -- one column width of padding before line numbers
vim.g.mapleader = " "

-- Key mappings for escaping insert mode,
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Delete
vim.api.nvim_set_keymap("n", "de", "d$", { desc = "Delete till the end of line" })
vim.api.nvim_set_keymap("n", "da", "d^", { desc = "Delete till the beginning of line" })

-- Key mappings for splitting windows
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })

-- Key mappings for switching between windows
vim.api.nvim_set_keymap("n", "<leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-w>l", { noremap = true, silent = true })

-- Normal mode
vim.api.nvim_set_keymap("n", ";", ":", { desc = "CMD enter command mode" })

-- Close nvim/buffer
vim.api.nvim_set_keymap("n", "<leader>q", ":q<cr>", { desc = "close nvim" })
vim.api.nvim_set_keymap("n", "<leader>x", ":bdelete<cr>", { desc = "Buffer close" })

-- Todo Telescope
vim.api.nvim_set_keymap("n", "td", "<cmd>TodoTelescope<cr>", { desc = "TodoTelescope" })

-- move
vim.api.nvim_set_keymap("n", "<S-k>", '<cmd>lua MiniMove.move_line("up")<cr>', { desc = "Move - line up" })
vim.api.nvim_set_keymap("n", "<S-j>", '<cmd>lua MiniMove.move_line("down")<cr>', { desc = "Move - line down" })
vim.api.nvim_set_keymap("n", "<S-h>", '<cmd>lua MiniMove.move_line("left")<cr>', { desc = "Move - line left" })
vim.api.nvim_set_keymap("n", "<S-l>", '<cmd>lua MiniMove.move_line("right")<cr>', { desc = "Move - line right" })
vim.api.nvim_set_keymap("v", "<S-k>", '<cmd>lua MiniMove.move_selection("up")<cr>', { desc = "Move - selection up" })
vim.api.nvim_set_keymap(
	"v",
	"<S-j>",
	'<cmd>lua MiniMove.move_selection("down")<cr>',
	{ desc = "Move - selection down" }
)
vim.api.nvim_set_keymap(
	"v",
	"<S-h>",
	'<cmd>lua MiniMove.move_selection("left")<cr>',
	{ desc = "Move - selection left" }
)
vim.api.nvim_set_keymap(
	"v",
	"<S-l>",
	'<cmd>lua MiniMove.move_selection("right")<cr>',
	{ desc = "Move - selection right" }
)
