return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    -- -@type NeoTreeConfig
    opts = {
      window = {
        position = "right",
      },
      filesystem = {
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = true,
          show_hidden_count = true,
        },
      },
    },
  },
  {
    enabled = true,
    "folke/flash.nvim",
    -- -@type Flash.Config
    opts = {
      -- search = {
      --   forward = true,
      --   multi_window = false,
      --   wrap = false,
      --   incremental = true,
      -- },
    },
  },
  {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      {
        "<leader>A",
        function()
          require("harpoon"):list():append()
        end,
        desc = "harpoon file",
      },
      {
        "<leader>a",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon quick menu",
      },
      {
        "<leader>1",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "harpoon to file 1",
      },
      {
        "<leader>2",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "harpoon to file 2",
      },
      {
        "<leader>3",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "harpoon to file 3",
      },
      {
        "<leader>4",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "harpoon to file 4",
      },
      {
        "<leader>5",
        function()
          require("harpoon"):list():select(5)
        end,
        desc = "harpoon to file 5",
      },
    },
  },
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    keys = {
      {
        "<leader>sl",
        function()
          local builtin = require("telescope.builtin")
          builtin.resume()
        end,
        desc = "Resume last",
      },
    },
    config = function(_, opts) -- _, opts
      local telescope = require("telescope")
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
        preview = {
          -- disable syntax highlighting for better performance
          treesitter = false,
        },
        wrap_results = false,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
      })
      opts.pickers = {
        diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = {
            preview_cutoff = 9999,
          },
        },
      }
      telescope.setup(opts)
      require("telescope").load_extension("fzf")
    end,
  },
}
