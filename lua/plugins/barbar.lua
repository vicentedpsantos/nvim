return {
  "romgrk/barbar.nvim",
  config = function()
    require("barbar").setup({
      icons = {
        filetype = { enabled = false },
        separator = {left = '👉 ', right = ' 👈'},
        modified = { button = "💩" },
        preset = "powerline" -- default, powerline or slanted
      },
    })
  end,
}
