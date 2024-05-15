-- For additional configurations for the copilot panel, suggestions, filetypes supported, etc
-- see https://github.com/zbirenbaum/copilot.lua
--
-- copilot configuration
return {
  "zbirenbaum/copilot.lua",
  opts = {
    copilot_node_command = vim.fn.expand("$HOME") .. "/.config/nvm/versions/node/v18.17.1/bin/node", -- Node.js version must be > 18.x
    -- filetypes = {
    --   ["*"] = false, -- disable for all other filetypes and ignore default `filetypes`
    -- },
  },
}
