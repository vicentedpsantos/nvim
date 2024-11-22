return {
  "vicentedpsantos/github-nvim",
  config = function()
    require("github-nvim")

    local wk = require("which-key")

    wk.add({
      {"<leader>gho", ":OpenGitHub<cr>", desc = "Open Github page of current repo." },
      {"<leader>ghf", ":OpenGitHubFile<cr>", desc = "Open Github page of current repo at current file." },
    }, {
        mode = "n",
        silent = true,
    })
  end,
}
-- return {
--   dir = "/Users/vicentesantos/projects/github-nvim",
--   name = "github-nvim",
--   config = function()
--     require("github-open")
--   end
-- }
