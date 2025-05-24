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

--vim.fn.sign_define("DiagnosticSignError", {text = "", texthl = "DiagnosticError"})
--vim.fn.sign_define("DiagnosticSignWarn",  {text = "", texthl = "DiagnosticWarn"})
--vim.fn.sign_define("DiagnosticSignInfo",  {text = "", texthl = "DiagnosticInfo"})
--vim.fn.sign_define("DiagnosticSignHint",  {text = "", texthl = "DiagnosticHint"})

vim.diagnostic.config({
  virtual_text = true,
  virtual_text = {
    prefix = "●",  -- or use "●", "■", "→" or just a simple character
    spacing = 4,
    format = function(diagnostic)
      local msg = diagnostic.message
      local max_len = 125 
      if #msg > max_len then
        msg = msg:sub(1, max_len - 3) .. "..."
      end
      return msg
    end,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = "󰋼 ",
      [vim.diagnostic.severity.HINT] = "󰌵 ",
    },
  },
})
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {})

require("config.lazy")
require("config.verible")
