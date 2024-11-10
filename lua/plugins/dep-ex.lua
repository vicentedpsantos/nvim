return {
  "vicentedpsantos/dep-ex",
  config = function()
    local dep_ex = require("dep-ex")

    dep_ex.setup({
      workspace = "/Users/vicentesantos/work",
      repo_owner = "FindHotel"
    })
  end
}

-- return {
--   dir = "/Users/vicentesantos/projects/dep-ex",
--   name = "dep-ex",
--   config = function()
--     dep_ex = require("dep-ex")
--
--     dep_ex.setup({
--       workspace = "/Users/vicentesantos/work",
--       repo_owner = "FindHotel"
--     })
--   end
-- }
