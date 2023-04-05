local tree = require("nvim-tree")
local lib = require("nvim-tree.lib")
local view = require("nvim-tree.view")

vim.g["loaded_netrw"] = 1
vim.g["loaded_netrwPlugin"] = 1

local function edit_or_open()
  local action = "close_node"
  local node = lib.get_node_at_cursor()
  if node.link_to and not node.nodes then
    require("nvim-tree.actions.node.open-file").fn(action, node.link_to)
    view.close() -- Close the tree if file was opened
  elseif node.nodes ~= nil then
    lib.expand_or_collapse(node)
  else
    require("nvim-tree.actions.node.open-file").fn(action, node.absolute_path)
    view.close() -- Close the tree if file was opened
  end
end

tree.setup({
  view = {
    side = "right",
    width = 40,
    mappings = {
      custom_only = false,
      list = {
        { key = "l", action = "edit",      action_cb = edit_or_open },
        { key = "h", action = "close_node" },
      },
    },
  },
})
