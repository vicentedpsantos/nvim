vim.g.mapleader = ","
vim.g.mapleader = ","

require("modules.options")
require("modules.mappings")

require("bootstrap")
require("deps")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- vim.cmd [[ colorscheme kanagawa ]]
vim.cmd [[ colorscheme kanagawa-dragon ]]
