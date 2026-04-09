-- ~/.config/nvim-new/lua/lsp.lua
vim.lsp.enable({
  "gopls",
  "lua_ls",
  "ts_ls",
  "rust-analyzer",
  "clangd",
  "jdtls",
  "python-language-server",
  "marksman",
  "zls"


})
vim.diagnostic.config({ virtual_text = true })
