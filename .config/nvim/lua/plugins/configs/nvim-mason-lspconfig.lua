local mason_lsp = require("mason-lspconfig")

mason_lsp.setup({
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    "jsonls",
    "html",
    "eslint",
    "tailwindcss",
  },
})
