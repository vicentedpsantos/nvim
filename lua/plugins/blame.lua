return {
  "FabijanZulj/blame.nvim",
  config = function()

    require("blame").setup({
      mappings = {
        commit_info = "i",
        stack_push = "<TAB>",
        stack_pop = "<BS>",
        show_commit = "<CR>",
        close = { "<esc>", "q" },
      },
    })

    -- Keybindings
    vim.keymap.set("n", "<leader>mz", "<cmd>BufferMovePrevious<cr>", { desc = "Re-order to previous" })
    vim.keymap.set("n", "<leader>mx", "<cmd>BufferMoveNext<cr>", { desc = "Re-order to next" })
  end,
}
