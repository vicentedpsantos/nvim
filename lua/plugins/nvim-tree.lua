local u = require "modules.util"

local nnoremap = u.nnoremap

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      hijack_cursor = false,
      sort = {
        folders_first = true,
      },
      view = {
        side = "left",
        number = false,
        float = {
          enable = true,
          open_win_config = function()
            local screen_w = vim.opt.columns:get()
            local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
            local window_w = screen_w * WIDTH_RATIO
            local window_h = screen_h * HEIGHT_RATIO
            local window_w_int = math.floor(window_w)
            local window_h_int = math.floor(window_h)
            local center_x = (screen_w - window_w) / 2
            local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()

            return {
              border = 'rounded',
              relative = 'editor',
              row = center_y,
              col = center_x,
              width = window_w_int,
              height = window_h_int,
            }
          end,
        },
        width = function()
          return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
      },
    })

    -- NvimTree
    nnoremap("<Leader>q", "<CMD>:NvimTreeToggle<CR>", { desc = "Open NvimTree file explorer tree" })
    nnoremap("<Leader>r", "<CMD>:NvimTreeFindFile!<CR>", { desc = "Open NvimTree file finder" })
  end,
}

