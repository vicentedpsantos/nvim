return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✅",
          package_pending = "🔁",
          package_uninstalled = "❌"

        }
      }
    })

    -- :Mason - opens a graphical status window
    -- :MasonUpdate - updates all managed registries
    -- :MasonInstall <package> ... - installs/re-installs the provided packages
    -- :MasonUninstall <package> ... - uninstalls the provided packages
    -- :MasonUninstallAll - uninstalls all packages
    -- :MasonLog - opens the mason.nvim log file in a new tab window
  end,
}
