return {
  dir = "/Users/vicentesantos/projects/vio-nvim",
  name = "vio-nvim",
  config = function()
    local shortcut_api_key = os.getenv("SHORTCUT_SERVICE_API_KEY")

    require("vio-nvim").setup({ shortcut_api_key = shortcut_api_key })

    local wk = require("which-key")

    wk.add({
      {"<leader>ss", "<cmd>VioDisplayStory<cr>", desc = "Display Shortcut Story" },
      {"<leader>rt", "<cmd>BoVioAPIRunFileTest<cr>", desc = "Run test file." },
      {"<leader>rc", "<cmd>BoVioAPIRunClosestTest<cr>", desc = "Run test file." },
    }, {
        mode = "n",
        silent = true,
    })
  end
}

-- return {
--   "vicentedpsantos/vio-nvim",
--   config = function()
--     local shortcut_api_key = os.getenv("SHORTCUT_SERVICE_API_KEY")
--
--     require("vio-nvim").setup({ shortcut_api_key = shortcut_api_key })
--
--     local wk = require("which-key")
--
--     wk.add({
--       {"<leader>ss", "<cmd>VioDisplayStory<cr>", desc = "Display Shortcut Story" },
--       {"<leader>rt",  "<cmd>BoVioAPIRunFileTest<cr>", desc = "Run test file." },
--       {"<leader>rc", "<cmd>BoVioAPIRunClosestTest<cr>", desc = "Run test file." },
--     }, {
--         mode = "n",
--         silent = true,
--     })
--   end,
-- }
