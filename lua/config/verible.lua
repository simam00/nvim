vim.lsp.config["verible"] = {
    cmd = { 'verible-verilog-ls' },
    filetypes = { 'systemverilog', 'verilog' },
--    root_dir = function(fname)
--      return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
--    end,
}
