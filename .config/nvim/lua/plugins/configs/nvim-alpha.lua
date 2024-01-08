local alpha = require("alpha")

alpha.setup({
  layout = {
    {
      type = "padding",
      val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.3) }),
    },
    {
      type = "text",
      val = {
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      },
      opts = { hl = "Title", position = "center" },
    },
    {
      type = "padding",
      val = 1,
    },
    {
      type = "text",
      val = string.format("v%d.%d.%d", vim.version().major, vim.version().minor, vim.version().patch),
      opts = { hl = "Title", position = "center" },
    },
    {
      type = "padding",
      val = 1,
    },
    {
      type = "text",
      val = string.format("%s", os.date("󰸗 %d-%m-%Y  󱑎 %H:%M:%S")),
      opts = {
        hl = "Title",
        position = "center",
      },
    },
    {
      type = "padding",
      val = 5,
    },
    {
      type = "group",
      val = {
        {
          type = "button",
          val = "󰋚 Restore session",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>S.", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+S.",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
        {
          type = "button",
          val = "󰈙 Find file",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>ff", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+ff",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
        {
          type = "button",
          val = "󰍉 Find word",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>fw", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+fw",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
        {
          type = "button",
          val = "󰭎 File browser",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>fb", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+fb",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
        {
          type = "button",
          val = "󰙰 Recent files",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>fr", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+fr",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
        {
          type = "button",
          val = "󰏘 Color schemes",
          on_press = function()
            local key = vim.api.nvim_replace_termcodes("<leader>us", true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
          end,
          opts = {
            hl = "Title",
            position = "center",
            shortcut = "leader+us",
            cursor = 5,
            width = 36,
            align_shortcut = "right",
          },
        },
      },
      opts = { spacing = 1 },
    },
  },
  ops = { noautocmd = true },
})
