-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<leader>h", ":nohl<CR>", { silent = true, desc = "No highlight" })
map("n", "s", "<nop>")

-- resize window using option + arrow keys
map("n", "<M-Up>", ":resize +2<CR>", { silent = true, desc = "Resize window up" })
map("n", "<M-Down>", ":resize -2<CR>", { silent = true, desc = "Resize window down" })
map("n", "<M-Left>", ":vertical resize +2<CR>", { silent = true, desc = "Resize window left" })
map("n", "<M-Right>", ":vertical resize -2<CR>", { silent = true, desc = "Resize window right" })
