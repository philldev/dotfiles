vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.wo.relativenumber = true

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

local options = { noremap = true, silent = true }

vim.keymap.set('n', '<space>E', vim.diagnostic.open_float, options)

vim.api.nvim_set_keymap('n', '<leader>cc', [[:e ~/.config/nvim/init.lua<CR>]], options)

vim.cmd('set clipboard+=unnamedplus')

-- Enable scroll binding
vim.cmd('set scrolloff=10')
vim.cmd('set scrollbind')
