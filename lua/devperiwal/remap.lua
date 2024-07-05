-- Neovim
vim.g.mapleader = " "
vim.o.number = true
-- Set tab width to 4 spaces
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.wo.cursorline = true  -- Highlight current line

-- Customize the highlight group for cursor line number
vim.cmd('highlight CursorLineNr guibg=#333333 guifg=#ffffff')

-- Enable auto-indentation
vim.o.autoindent = true
vim.o.smartindent = true

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<C-s>', vim.cmd.w)

vim.api.nvim_set_keymap('n', '<C-g>', '<C-w>w', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { noremap = true, silent = true })
