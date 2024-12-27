return {
  dir = "/Users/vicentesantos/projects/replay-nvim",
  name = "replay-nvim",
  config = function()
    require("replay-nvim").setup({
      default_save_path = "/Users/vicentesantos/temp/recordings/",
      default_play_back_speed = 1.25,
    })
  end
}
