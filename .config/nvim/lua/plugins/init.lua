local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")

local opts = {
  ui = {
    border = "rounded",
  },
}

local plugins = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "neovim/nvim-lspconfig",
    version = "*",
  },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  "nvim-lualine/lualine.nvim",
  "kylechui/nvim-surround",
  "lewis6991/gitsigns.nvim",
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "akinsho/bufferline.nvim",
    version = "4.x",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "folke/tokyonight.nvim",
    branch = "main",
    event = "VimEnter",
  },
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  { "echasnovski/mini.icons",              version = false },
  "jose-elias-alvarez/null-ls.nvim",
  "numToStr/Comment.nvim",
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    dependencies = { { "nvim-treesitter/nvim-treesitter" } },
  },
  "mattn/emmet-vim",
  { "lukas-reineke/indent-blankline.nvim", main = "ibl" },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
  },
  "rcarriga/nvim-notify",
  {
    "folke/trouble.nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "Shatur/neovim-session-manager",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  "mbbill/undotree",
  "akinsho/toggleterm.nvim",
  "norcalli/nvim-colorizer.lua",
  "mfussenegger/nvim-dap",
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
  },
  "theHamsta/nvim-dap-virtual-text",
  "marilari88/twoslash-queries.nvim",
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  "RRethy/vim-illuminate",
  "christoomey/vim-tmux-navigator",
  "github/copilot.vim",
}

lazy.setup(plugins, opts)
