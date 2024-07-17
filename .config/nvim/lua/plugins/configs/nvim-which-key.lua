local which_key = require("which-key")

which_key.setup({
  win = {
    border = "rounded",
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    width = { min = 30, max = 50 },
    spacing = 5,
  },
})

which_key.add({
  { "<leader>D", group = "Debugger" },
  { "<leader>S", group = "Session" },
  { "<leader>b", group = "Buffers" },
  { "<leader>c", group = "Copilot" },
  { "<leader>d", group = "Diagnostics" },
  { "<leader>f", group = "File" },
  { "<leader>g", group = "Git" },
  { "<leader>l", group = "LSP" },
  { "<leader>m", group = "Markdown" },
  { "<leader>p", group = "Packages" },
  { "<leader>s", group = "Search" },
  { "<leader>t", group = "Terminal" },
  { "<leader>u", group = "UI" },
})
