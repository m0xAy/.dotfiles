local notify = require("notify")
local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")
local Terminal = require("toggleterm.terminal").Terminal

local M = {}

function M.toggle_line_wrap()
  vim.wo.wrap = not vim.wo.wrap
  notify(string.format("Turned %s.", vim.wo.wrap and "on" or "off"), "info", {
    title = "vim.wo.wrap",
  })
end

function M.toggle_git_linehl()
  local gitsigns = require("gitsigns")
  local result = gitsigns.toggle_linehl()
  notify(string.format("Turned %s.", result and "on" or "off"), "info", {
    title = "gitsigns: toggle_linehl",
  })
end

function M.toggle_colorcolumn()
  vim.wo.colorcolumn = vim.wo.colorcolumn ~= "" and "" or "120"
  notify(string.format("Turned %s.", vim.wo.colorcolumn ~= "" and "on" or "off"), "info", {
    title = "vim.wo.colorcolumn",
  })
end

-- https://github.com/nvim-telescope/telescope.nvim/issues/621#issuecomment-808845893
function M.buffers(opts)
  opts = opts or {}
  opts.previewer = true
  opts.attach_mappings = function(prompt_bufnr, map)
    local delete_buf = function()
      local current_picker = action_state.get_current_picker(prompt_bufnr)
      local multi_selections = current_picker:get_multi_selection()

      if next(multi_selections) == nil then
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.api.nvim_buf_delete(selection.bufnr, { force = true })
      else
        actions.close(prompt_bufnr)
        for _, selection in ipairs(multi_selections) do
          vim.api.nvim_buf_delete(selection.bufnr, { force = true })
        end
      end
    end
    map("i", "<C-w>", delete_buf)
    return true
  end
  require("telescope.builtin").buffers(opts)
end

-- https://github.com/AstroNvim/AstroNvim/blob/32a63a7ff10eea0ed927a5bef2ecf76fef6001b6/lua/core/utils/init.lua#L304
function M.system_open(path)
  path = path or vim.fn.expand("<cfile>")
  if vim.fn.has("mac") == 1 then
    -- if mac use the open command
    vim.fn.jobstart({ "open", path }, { detach = true })
  elseif vim.fn.has("unix") == 1 then
    -- if unix then use xdg-open
    vim.fn.jobstart({ "xdg-open", path }, { detach = true })
  else
    -- if any other operating system notify the user that there is currently no support
    notify("System open is not supported on this OS!", "error")
  end
end

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function M.toggle_lazygit()
  lazygit:toggle()
end

return M
