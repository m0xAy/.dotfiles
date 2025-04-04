vim.g["mapleader"] = " "

require("settings.options")

require("plugins")
require("plugins.configs.nvim-notify")
require("plugins.configs.treesitter")
require("plugins.configs.nvim-gitsigns")
require("plugins.configs.nvim-session-manager")
require("plugins.configs.nvim-alpha")
require("plugins.configs.autopairs")
require("plugins.configs.nvim-lualine")
require("plugins.configs.nvim-tokyonight")
require("plugins.configs.nvim-bufferline")
require("plugins.configs.surround")
require("plugins.configs.nvim-telescope")
require("plugins.configs.nvim-cmp")
require("plugins.configs.nvim-which-key")
require("plugins.configs.nvim-noice")
require("plugins.configs.nvim-null-ls")
require("plugins.configs.nvim-indent-blankline")
require("plugins.configs.nvim-trouble")
require("plugins.configs.tree")
require("plugins.configs.nvim-toggleterm")
require("plugins.configs.nvim-colorizer")
-- require("plugins.configs.dap-virtual-text")
-- require("plugins.configs.nvim-dapui")
require("plugins.configs.nvim-comment")
require("plugins.configs.nvim-neodev")
-- require("plugins.configs.nvim-nx")
-- MUST be set up in this order --
-- mason -> mason-lspconfig -> lspconfig
require("plugins.configs.nvim-mason")
require("plugins.configs.nvim-mason-lspconfig")
require("plugins.configs.nvim-lspconfig")

require("settings.keymaps")
require("settings.config")
