vim.lsp.config["verible"] = {
    cmd = { 'verible-verilog-ls' },
    filetypes = { 'systemverilog', 'verilog' },
    root_dir = vim.fs.dirname(vim.fs.find('.git', { path = vim.fn.getcwd(), upward = true })[1]),
}
