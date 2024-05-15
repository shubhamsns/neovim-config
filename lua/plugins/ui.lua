return {
  -- hack: to suppress the 'No information available' in tailwindcss and across all the other plugins
  -- @link: https://github.com/LazyVim/LazyVim/discussions/830#discussioncomment-6008701
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      -- draw = {
      -- delay = 0,
      -- animation = require("mini.indentscope").gen_animation.none(),
      -- },
    },
  },

  -- {
  --   "rcarriga/nvim-notify",
  --   opts = {
  --     timeout = 5000,
  --     background_colour = "#000000",
  --   },
  -- },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = {},
  },
}
