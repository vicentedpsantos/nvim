local u = require "modules.util"

local nnoremap = u.nnoremap

return {
  'MeanderingProgrammer/markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup({})
  end,

  nnoremap("<leader>mdf", "<cmd>:RenderMarkdownToggle<cr>")
}
