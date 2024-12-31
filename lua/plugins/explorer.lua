-- return {
--   "nvim-telescope/telescope.nvim",
--   branch = "0.1.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     {"nvim-telescope/telescope-fzf-native.nvim", build = "make" },
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     local telescope = require("telescope")
--
--     telescope.setup({
--       defaults = {
--         path_display = { "smart" },
--         mappings = {},
--       }
--     })
--
--     telescope.load_extension("fzf")
--
--     -- set keymaps
--     local keymap = vim.keymap
--
--     keymap.set("n", "<leader>t", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
--     keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
--     keymap.set("n", "<leader>ff", "<cmd>Telescope live_grep<cr>", { desc = "Live grep in cwd" })
--     keymap.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { desc = "buffers" })
--   end,
-- }
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
      {"<leader>gb", "<cmd>lua require('fzf-lua').git_blame()<CR>", desc = "Opens git blame."},
      {"<leader>gs", "<cmd>lua require('fzf-lua').git_status()<CR>", desc = "Opens git status."}
    }, {
        mode = {"n", "v"},
        silent = true,
    })

    vim.keymap.set("v", "<leader>fv", "<cmd>lua require('fzf-lua').grep_visual()<CR>", { desc = "Grep visual selection."} )
  end
}
