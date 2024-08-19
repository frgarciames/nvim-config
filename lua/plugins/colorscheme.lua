return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      background = {
        dark = "dragon",
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    }
  end,
}
