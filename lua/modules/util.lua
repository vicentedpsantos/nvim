local fn = vim.fn

_G.Util = {}

local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local vim_path = vim.fn.stdpath("data")

Util.noremap = get_mapper("n", false)
Util.nnoremap = get_mapper("n", true)
Util.inoremap = get_mapper("i", true)
Util.tnoremap = get_mapper("t", true)
Util.vnoremap = get_mapper("v", true)
Util.vim_path = vim_path

return Util

