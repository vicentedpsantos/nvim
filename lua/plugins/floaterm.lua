return {
  'voldikss/vim-floaterm',
  config = function()
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.85

    local wk = require("which-key")

    wk.add({
      {"<leader>lg", "<cmd>FloatermNew lazygit<cr>", desc = "Opens LazyGit in a floaterm."}
    }, {
        mode = "n",
        silent = true,
    })
  end
}
