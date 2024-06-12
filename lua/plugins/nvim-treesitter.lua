return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- http, lua, xml, json and graphql parsers are needed for rest.nvim
      ensure_installed = { "elixir", "erlang", "eex", "heex", "http", "lua", "xml", "json", "graphql" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
