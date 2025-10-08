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

