-- Settings
vim.o.number = true
vim.o.syntax = "on"
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
vim.cmd("colorscheme kanagawa")
vim.cmd(":hi statusline guibg=NONE")

