local u = require "modules.util"

return {
  'MeanderingProgrammer/markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup({})

    local wk = require("which-key")

    wk.add({
      {"<leader>mdf", ":RenderMarkdown toggle<cr>", desc = "Toggle Markdown Render" },
    }, {
        mode = "n",
        silent = true,
    })
  end,
}
