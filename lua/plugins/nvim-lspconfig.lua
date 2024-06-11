local u = require "modules.util"

local nnoremap = u.nnoremap

return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Elixir
    lspconfig.elixirls.setup({
      cmd = { "/opt/homebrew/bin/elixir-ls" } 
    })

    -- Remaps for LSP
    nnoremap("gd", ":lua vim.lsp.buf.definition()<cr>")
    nnoremap("fmt", ":lua vim.lsp.buf.format()<cr>")
  end,
}
