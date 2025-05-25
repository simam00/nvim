vim.lsp.config["svlangserver"] = {
  cmd = { "svlangserver", "--file-list-path=files.f"},
  filetypes = { "systemverilog", "verilog" },
  root_dir = vim.fn.getcwd(), -- or use lspconfig.util.root_pattern()
}
