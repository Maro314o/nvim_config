-- Commands
vim.api.nvim_create_user_command(
	'Econf',
	function()
		local nvim_config_file = "$NVIM_CONFIG_PATH"
		vim.cmd("e " .. nvim_config_file)
	end,
	{ nargs = 0 }
)
vim.api.nvim_create_user_command(
	'CD',
	function()
		vim.cmd("silent! lcd %:p:h")
	end,
	{ nargs = 0 }
)

vim.api.nvim_create_user_command("RunByFiletype",
	function()
		local ft = vim.bo.filetype

		if ft == "python" then
			vim.cmd("!python %")
		elseif ft == "racket" then
			vim.cmd("!racket %")
		elseif ft == "go" then
			vim.cmd("!go run .")
		elseif ft == "cs" then
			vim.cmd("!dotnet run")
		elseif ft == "c" then
			vim.cmd("!gcc %:p -o %:p:r && ./%:r && rm %:p:r")
		else
			print("No command configured for filetype: " .. ft)
		end
	end
	, { nargs = 0 })
