-- Lsp
vim.lsp.enable({ "lua_ls", "gopls", "pyright", "csharp_ls", "antlersls", "clangd" ,"racket_langserver"})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" } }
		}
	}
})
