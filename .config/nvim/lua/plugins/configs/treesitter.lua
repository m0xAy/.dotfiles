local treesitter_configs = require("nvim-treesitter.configs")

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
  context_commentstring = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
})
