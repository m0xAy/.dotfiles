local bufferline = require("bufferline")

bufferline.setup({
  options = {
    separator_style = "thin",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(_, level, _, _)
      local icon = level:match("error") and "󰅙" or "󰋼"
      return icon
    end,
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
  },
})
