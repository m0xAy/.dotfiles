local treesitter_configs = require("nvim-treesitter.configs")
local ts_context_commentstring = require("ts_context_commentstring")

treesitter_configs.setup({
  ensure_installed = { "c", "lua", "vim", "help" },
  ignore_install = { "help" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
})

ts_context_commentstring.setup()

vim.g.skip_ts_context_commentstring_module = true
