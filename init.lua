vim.g.mapleader = ","
vim.g.mapleader = ","

require("modules.options")
require("modules.mappings")

require("bootstrap")
require("deps")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.cmd [[ colorscheme tokyonight ]]
-- vim.cmd [[ colorscheme darkblue ]]
-- vim.cmd [[ colorscheme zaibatsu ]]
-- vim.cmd [[ colorscheme farout ]]

-- vim.cmd [[ colorscheme zenwritten ]]
-- vim.cmd [[ colorscheme tokyobones ]]
-- vim.cmd [[ colorscheme zenbones ]]
-- vim.cmd [[ colorscheme darkblue ]]
-- vim.cmd [[ colorscheme evening ]]
-- vim.g.zenbones_compat = 1
-- vim.cmd [[ colorscheme duckbones ]]

