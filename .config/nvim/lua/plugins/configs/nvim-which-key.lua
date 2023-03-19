local which_key = require("which-key")

which_key.setup({
  window = {
    border = "rounded",
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    width = { min = 30, max = 50 },
    spacing = 5,
  },
})

which_key.register({
  f = {
    name = "File",
  },
  d = {
    name = "Diagnostics",
  },
  p = {
    name = "Packages",
  },
  l = {
    name = "LSP",
  },
  u = {
    name = "UI",
  },
  s = {
    name = "Search",
  },
  D = {
    name = "Debugger",
  },
  g = {
    name = "Git",
  },
  S = {
    name = "Session",
  },
  t = {
    name = "Terminal",
  },
  b = {
    name = "Buffers",
  },
  m = {
    name = "Markdown",
  },
  c = {
    name = "Copilot",
  },
}, { prefix = "<leader>" })
