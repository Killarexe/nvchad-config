local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_init = require("nvchad.configs.lspconfig").on_init
local lspconfig = require("lspconfig")

lspconfig.asm_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"asm", "s"}
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"c", "cpp"}
})

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"md"}
})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml")
})

lspconfig.taplo.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"toml"}
})

lspconfig.zls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"zig"}
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  filetypes = {"java"},
  settings = {

  }
})
