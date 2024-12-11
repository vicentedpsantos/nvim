local u = require "modules.util"

return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local mason_bin_path = u.vim_path .. "/mason/bin"

    -- Elixir
    lspconfig.elixirls.setup({cmd = { mason_bin_path .. "/elixir-ls" }})

    -- Erlang
    lspconfig.erlangls.setup{}

    -- Lua
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    })

    -- Ruby
    lspconfig.solargraph.setup{}

    -- Swift
    lspconfig.sourcekit.setup{}

    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'LSP Actions',
      callback = function()
        local wk = require("which-key")

        wk.add({
          {"K", ":lua vim.lsp.buf.hover()<cr>", desc = "LSP hover info" },
          {"gd", ":lua vim.lsp.buf.definition()<cr>", desc = "LSP go to definition" },
          {"gD", ":lua vim.lsp.buf.declaration()<cr>", desc = "LSP go to declaration" },
          {"fmt", ":lua vim.lsp.buf.format()<cr>", desc = "LSP format" },
          {"gi", ":lua vim.lsp.buf.implementation()<cr>", desc = "LSP go to implementation"},
          {"gr", ":lua vim.lsp.buf.references()<cr>", desc = "LSP list references"},
          {"gs", ":lua vim.lsp.buf.signature_help()<cr>", desc = "LSP signature help"},
          {"gn", ":lua vim.lsp.buf.rename()<cr>", desc = "LSP rename"}
        }, {
            mode = "n",
            silent = true,
        })
      end,
    })
  end,
}
