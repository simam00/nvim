vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop =2")
vim.cmd("set shiftwidth =2")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.number = true
vim.wo.relativenumber = true
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

require("config.lazy")
