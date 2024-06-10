return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Elixir
    lspconfig.elixirls.setup({
      cmd = { "/opt/homebrew/bin/elixir-ls" } 
    })
  end,
}
