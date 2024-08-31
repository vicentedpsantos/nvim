local u = require "modules.util"

local nnoremap = u.nnoremap

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
    lspconfig.lua_ls.setup{}

    -- Swift
    lspconfig.sourcekit.setup{}

    -- Remaps for LSP
    -- Shift + K to show hover
    nnoremap("gd", ":lua vim.lsp.buf.definition()<cr>", { desc = "Run request under the cursor" })
    nnoremap("fmt", ":lua vim.lsp.buf.format()<cr>", { desc = "Run last request" })
    nnoremap("<leader>ca", ":lua vim.lsp.buf.code_action()<cr>", { desc = "Run code action" })

    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'LSP Actions',
      callback = function(args)
        local wk = require("which-key")

        wk.register({
          K = { vim.lsp.buf.hover, "LSP hover info" },
          gd = { vim.lsp.buf.definition, "LSP go to definition" },
          gD = { vim.lsp.buf.declaration, "LSP go to declaration" },
          fmt = { vim.lsp.buf.format, "LSP format" },
          gi = { vim.lsp.buf.implementation, "LSP go to implementation"},
          gr = { vim.lsp.buf.references, "LSP list references"},
          gs = { vim.lsp.buf.signature_help, "LSP signature help"},
          gn = { vim.lsp.buf.rename, "LSP rename"},
          ["[g"] = { vim.diagnostic.goto_prev, "Go to previous diagnostic"},
          ["g]"] = { vim.diagnostic.goto_next, "Go to next diagnostic"},
        })
      end,
    })
  end,
}
