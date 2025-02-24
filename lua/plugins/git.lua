return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}

      local wk = require("which-key")

      wk.add({
        {"<leader>gb", "<cmd>BlameToggle virtual<CR>", desc = "Opens git blame."},
      }, {
          mode = {"n", "v"},
          silent = true,
      })
    end,
  },
}
