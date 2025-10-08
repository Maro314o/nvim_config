-- Keymaps
--
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<C-n>', ':Oil<CR>')
vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>sr', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>st', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
