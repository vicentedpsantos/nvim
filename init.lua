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
-- vim.cmd [[ colorscheme zaibatsu ]]
-- vim.cmd [[ colorscheme farout ]]

vim.g.zenbones_compat = 1
-- vim.cmd [[ colorscheme zenwritten ]]
-- vim.cmd [[ colorscheme tokyobones ]]
vim.cmd [[ colorscheme zenbones ]]
