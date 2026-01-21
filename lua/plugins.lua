-- Plugins
vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },        	-- theme
	{ src = "https://github.com/neovim/nvim-lspconfig" },        	-- lsp config
	{ src = "https://github.com/stevearc/oil.nvim" },            	-- file explorer
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },     -- web icons
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },   -- fuzzy file search
	{ src = "https://github.com/nvim-lua/plenary.nvim" },           -- dependency
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- dependency for better lsp support
	{ src = "https://github.com/Saghen/blink.cmp" },             	-- autocompletition
	{ src = "https://github.com/folke/trouble.nvim" },          	-- error checking
	{ src = "https://github.com/chomosuke/typst-preview.nvim" }, 	-- typst preview
	{ src = "https://github.com/nosduco/remote-sshfs.nvim"},   		-- remote edit files over ssh
})

require("remote-sshfs").setup()
require("trouble").setup()
require("telescope").setup()

require("oil").setup({
	keymaps = {
		["_"] = false,
	}

})
require("blink.cmp").setup({
	fuzzy = { implementation = "lua" },
	keymap = {
		['<C-e>'] = false,
		['<C-b>'] = false,
		['<C-f>'] = false,
		['<S-Tab>'] = false,
		['<C-k>'] = false,

		['<CR>'] = { 'select_and_accept', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
		['<s-Tab>'] = { 'select_prev', 'fallback' },
		['<C-space'] = { 'show', 'fallback' },

	}
})




require("kanagawa").setup({

	commentStyle = { italic = false },
	keywordStyle = { italic = false },
	overrides = function()
		return {
			["@variable.builtin"] = { italic = false },
		}
	end
})
