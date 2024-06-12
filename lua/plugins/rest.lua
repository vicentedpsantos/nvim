local u = require "modules.util"

local nnoremap = u.nnoremap

return {
  "rest-nvim/rest.nvim",
  ft = "http",
  dependencies = { "luarocks.nvim" },
  config = function()
    require("rest-nvim").setup()

    -- keybindings
    nnoremap("<leader>rr", "<cmd>Rest run<cr>")
    nnoremap("<leader>rl", "<cmd>Rest run last<cr>")
  end,
}
