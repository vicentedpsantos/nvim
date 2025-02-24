return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})

    local wk = require("which-key")

    wk.add({
      -- Grep
      {"<leader>ff", "<cmd>lua require('fzf-lua').live_grep_native()<CR>", desc = "Opens live grep."},
      {"<leader>fw", "<cmd>lua require('fzf-lua').grep_cword()<CR>", desc = "Grep word under cursor."},

      -- colorschemes
      {"<leader>fac", "<cmd>lua require('fzf-lua').awesome_colorschemes()<CR>", desc = "Grep word under cursor."},

      -- Files
      {"<leader>t", "<cmd>lua require('fzf-lua').files()<CR>", desc = "Opens file explorer."},

      -- Git
      {"<leader>gs", "<cmd>lua require('fzf-lua').git_status()<CR>", desc = "Opens git status."}
    }, {
        mode = {"n", "v"},
        silent = true,
    })

    vim.keymap.set("v", "<leader>fv", "<cmd>lua require('fzf-lua').grep_visual()<CR>", { desc = "Grep visual selection."} )
  end
}
