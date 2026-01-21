-- Lsp
vim.lsp.enable({ "lua_ls", "gopls","ruff", "pyright", "csharp_ls", "clangd" ,"racket_langserver","tinymist","templ","superhtml","dockerls"})
vim.lsp.config('tinymist', {
	settings = {
	 formatterMode = "typstyle",
 }
})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" } }
		}
	}
})
