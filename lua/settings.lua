-- Settings
vim.o.number = true
vim.o.undofile= true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.swapfile = false
vim.o.clipboard = "unnamedplus"
vim.o.winborder= "rounded"
vim.g.mapleader = " "
vim.diagnostic.config({
  virtual_text = true,  -- show inline error messages
  signs = true,         -- show signs in the sign column
  underline = true,     -- underline problematic code
  update_in_insert = false,
  severity_sort = true,
})

vim.o.syntax = "on"
vim.cmd("colorscheme quiet")
vim.api.nvim_set_hl(0, "Normal", { bg = "#1e1e1e" })
vim.cmd(":hi NormalFloat guibg=#333333")
vim.cmd(":hi Pmenu guibg=#333333")
vim.cmd(":hi Pmenu guifg=White")
vim.cmd(":hi PmenuSel guibg=Gray")
vim.cmd(":hi PmenuKind guibg=#333333")
--vim.cmd("colorscheme kanagawa")
