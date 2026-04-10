-- ~/.config/nvim-new/lua/lsp.lua
vim.lsp.enable({
  "gopls",
  "lua_ls",
  "ts_ls",
  "rust-analyzer",
  "clangd",
  "jdtls",
  "marksman",
  "python-language-server",
  "zls"


})
vim.diagnostic.config({ virtual_text = true })
