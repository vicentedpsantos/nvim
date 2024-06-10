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
    vim.keymap.set("n", "<leader>gb", "<cmd>BlameToggle window<cr>", { desc = "Toggle git blame window" })
  end,
}
