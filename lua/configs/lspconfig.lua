local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

lspconfig.asm_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"asm", "s"}
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"c", "cpp"}
})

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"md"}
})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml")
})

lspconfig.taplo.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"toml"}
})

lspconfig.zls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"zig"}
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"java"},
  settings = {

  }
})
