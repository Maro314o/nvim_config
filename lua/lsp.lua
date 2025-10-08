-- Lsp
--
vim.lsp.enable({ "lua_ls", "gopls", "pyright" })
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" } }
		}
	}
})
