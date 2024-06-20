local u = require "modules.util"

local nnoremap = u.nnoremap

return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      hijack_cursor = false,
      view = { 
        side = "right",
        number = false,
      },
    })

  -- NvimTree
  nnoremap("<Leader>q", "<CMD>:NvimTreeToggle<CR>", { desc = "Open NvimTree file explorer tree" })
  nnoremap("<Leader>r", "<CMD>:NvimTreeFindFile!<CR>", { desc = "Open NvimTree file finder" })

  end,
}

