return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    ---@class CatppuccinOptions
    opts = {
      transparent_background = true,
      -- integrations = {
      --   native_lsp = {
      --     enabled = ,
      --   },
      -- },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
