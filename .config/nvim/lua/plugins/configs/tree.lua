local tree = require("nvim-tree")

vim.g["loaded_netrw"] = 1
vim.g["loaded_netrwPlugin"] = 1

local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "l", api.node.open.edit, opts("Edit or Open"))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close"))
end

tree.setup({
  update_focused_file = {
    enable = true,
  },
  view = {
    side = "right",
    width = 45,
    mappings = {
      custom_only = false,
    },
    relativenumber = true,
  },
  on_attach = on_attach,
})
