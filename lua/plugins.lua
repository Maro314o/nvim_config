-- Plugins
--
vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/vlime/vlime" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
})

require("nvim-autopairs").setup({
	check_ts = true,
})
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
})
require("blink.cmp").setup({
	fuzzy = { implementation = "lua" },
	keymap = {
		['<C-space>'] = false,
		['<C-e>'] = false,
		['<C-b>'] = false,
		['<C-f>'] = false,
		['<S-Tab>'] = false,
		['<C-k>'] = false,

		['<CR>'] = { 'select_and_accept', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
		['<s-Tab>'] = { 'select_prev', 'fallback' },
	}
})
require("telescope").setup()
require("oil").setup()
require("kanagawa").setup({
	commentStyle = { italic = false },
	keywordStyle = { italic = false },
	overrides = function()
		return {
			["@variable.builtin"] = { italic = false },
		}
	end
})
