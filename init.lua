vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop =2")
vim.cmd("set shiftwidth =2")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
