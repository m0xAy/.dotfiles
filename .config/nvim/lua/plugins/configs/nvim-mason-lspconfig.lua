local mason_lsp = require("mason-lspconfig")

mason_lsp.setup({
  ensure_installed = {
    "lua_ls",
    "cssls",
    "ts_ls",
    "jsonls",
    "html",
    "eslint",
    "tailwindcss",
  },
})
