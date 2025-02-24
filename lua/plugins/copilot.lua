
return {
  {
    "github/copilot.vim",
    {
      "CopilotC-Nvim/CopilotChat.nvim",
      dependencies = {
        { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
      },
      build = "make tiktoken", -- Only on MacOS or Linux
      opts = {
        -- See Configuration section for options
      },
      -- See Commands section for default commands if you want to lazy load on them
    },
  },
  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   config = function()
  --     -- require("codecompanion").setup({
  --     --   adapters = {
  --     --     copilot = function()
  --     --       local copilot_api_key = os.getenv("COPILOT_API_KEY")
  --     --
  --     --       return require("codecompanion.adapters").extend("copilot", {
  --     --         env = {
  --     --           api_key = copilot_api_key
  --     --         },
  --     --       })
  --     --     end,
  --     --   },
  --     -- })
  --     require("codecompanion").setup({
  --       strategies = {
  --         chat = {
  --           adapter = "copilot",
  --         },
  --         inline = {
  --           adapter = "copilot",
  --         },
  --         agent = {
  --           adapter = "copilot",
  --         },
  --       },
  --     })
  --   end,
  -- }
}
