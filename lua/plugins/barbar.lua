return {
  "romgrk/barbar.nvim",
  config = function()
    require("barbar").setup({
      icons = {
        filetype = { enabled = false },
        separator = {left = '👉 ', right = ' 👈'},
        modified = { button = "🔥" },
        preset = "powerline" -- default, powerline or slanted
      },
      insert_at_end = true,
    })

    -- Keybindings
    vim.keymap.set("n", "<leader>mz", "<cmd>BlameToggle window<cr>", { desc = "Toggle git blame window" })
  end,
}
