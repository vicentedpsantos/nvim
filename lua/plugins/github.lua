-- return {
--   "vicentedpsantos/github-nvim",
--   config = function()
--     require("github-nvim")
--
--     local wk = require("which-key")
--
--     wk.add({
--       {"<leader>gho", ":OpenGitHub<cr>", desc = "Open Github page of current repo." },
--       {"<leader>ghf", ":OpenGitHubFile<cr>", desc = "Open Github page of current repo at current file." },
--     }, {
--         mode = "n",
--         silent = true,
--     })
--   end,
-- }


return {
  dir = "/Users/vicentesantos/projects/github-nvim",
  name = "github-nvim",
  config = function()
    require("github-nvim")


    local wk = require("which-key")

    wk.add({
      {"<leader>gho", "<cmd>:OpenGitHub<cr>", desc = "Open Github page of current repo." },
      {"<leader>ghf", "<cmd>:OpenGitHubFile<cr>", desc = "Open Github page of current repo at current file." },
      {"<leader>ghl", "<cmd>:OpenGitHubFileLine<cr>", desc = "Open Github page of current repo at current file at current line." },
      {"<leader>ghc", "<cmd>:CopyGitHubFileLine<cr>", desc = "Copy Github page of current repo at current file at current line." },
    }, {
        mode = { "n", "v" },
        silent = true,
    })

    vim.keymap.set("v", "<leader>ghl", ":OpenGitHubFileLine<cr>", { desc = "Open Github page of current repo at current file at current range."} )
    vim.keymap.set("v", "<leader>ghc", ":CopyGitHubFileLine<cr>", { desc = "Copy Github page of current repo at current file at current range."} )
  end,
}
