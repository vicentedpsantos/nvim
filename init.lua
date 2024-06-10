vim.g.mapleader = ","
vim.g.mapleader = ","

vim.cmd [[
  runtime! lua/modules/options.lua
  runtime! lua/modules/mappings.lua
]]

require("bootstrap")
require("deps")


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- vim.cmd [[ colorscheme tokyonight ]]
-- vim.cmd [[ colorscheme darkblue ]]
vim.cmd [[ colorscheme zaibatsu ]]
