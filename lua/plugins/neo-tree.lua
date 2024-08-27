local u = require "modules.util"

local nnoremap = u.nnoremap

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local function natural_cmp(left, right)
      left = left.name:lower()
      right = right.name:lower()

      if left == right then
        return false
      end

      for i = 1, math.max(string.len(left), string.len(right)), 1 do
        local l = string.sub(left, i, -1)
        local r = string.sub(right, i, -1)

        if type(tonumber(string.sub(l, 1, 1))) == "number" and type(tonumber(string.sub(r, 1, 1))) == "number" then
          local l_number = tonumber(string.match(l, "^[0-9]+"))
          local r_number = tonumber(string.match(r, "^[0-9]+"))

          if l_number ~= r_number then
            return l_number < r_number
          end
        elseif string.sub(l, 1, 1) ~= string.sub(r, 1, 1) then
          return l < r
        end
      end
    end

    require("nvim-tree").setup({
      sort_by = function(nodes)
        table.sort(nodes, natural_cmp)
      end,
      filters = {
        dotfiles = false,
      },
      hijack_cursor = false,
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

