return {
  "hood/popui.nvim",
  config = function()
    vim.ui.select = require"popui.ui-overrider"
    vim.ui.input = require"popui.input-overrider"

    vim.api.nvim_set_keymap("n", "<leader>pd", ':lua require"popui.diagnostics-navigator"()<CR>', { noremap = true, silent = true }) 
    vim.api.nvim_set_keymap("n", "<leader>pr", ':lua require"popui.references-navigator"()<CR>', { noremap = true, silent = true })
  end
}
