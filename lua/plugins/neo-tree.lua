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
  end,
}

