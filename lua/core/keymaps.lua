vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.api.nvim_set_keymap("n", "<C-j>", "<cmd>lua toggle_float_terminal()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><cmd>lua toggle_float_terminal()<CR>", {noremap = true, silent = true})
-- vim.cmd.highlight('DiagnosticUnderlineError guisp=#ff0000 gui=undercurl')
