return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      dark_variant = "moon",
      bold_vert_split = false,
      dim_inactive_background = false,
      extend_background_under_cursor = true,

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },
    })
  end,
}
