local u = require "modules.util"

local nnoremap = u.nnoremap

return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local mason_bin_path = u.vim_path .. "/mason/bin"
    
    -- Elixir
    lspconfig.elixirls.setup({
      cmd = { mason_bin_path .. "/elixir-ls" },
    })

    -- Erlang
    lspconfig.erlangls.setup{}

    -- Remaps for LSP
    nnoremap("gd", ":lua vim.lsp.buf.definition()<cr>", { desc = "Run request under the cursor" })
    nnoremap("fmt", ":lua vim.lsp.buf.format()<cr>", { desc = "Run last request" })
    nnoremap("<leader>ca", ":lua vim.lsp.buf.code_action()<cr>", { desc = "Run code action" })
  end,
}
