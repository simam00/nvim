vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop =2")
vim.cmd("set shiftwidth =2")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.number = true
vim.wo.relativenumber = true
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor

--function map(mode, lhs, rhs, opts)
--  local options = {noremap = true}
--  if opts then options = vim.tbl_extend('force', options, opts) end
--  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
--end

require("config.lazy")
