local telescope = require("telescope")

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules/", "%.git/", "coverage/", "%.yarn/" },
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
  },
})

telescope.load_extension("fzf")
telescope.load_extension("file_browser")

