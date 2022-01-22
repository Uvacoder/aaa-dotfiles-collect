return {
  setup = function(use)
    use({
      "Mofiqul/dracula.nvim",

      config = function()
        vim.g.dracula_colors = {
          bg = "#000000",
          fg = "#F8F8F2",
          comment = "#44475A",
          selection = "#6272A4",
          red = "#FF5555",
          orange = "#FFB86C",
          yellow = "#F1FA8C",
          green = "#50fa7b",
          purple = "#BD93F9",
          cyan = "#8BE9FD",
          pink = "#FF79C6",
          bright_red = "#FF5555",
          bright_green = "#5afa7b",
          bright_yellow = "#f1fa8c",
          bright_blue = "#BD93f9",
          bright_magenta = "#ff79c6",
          bright_cyan = "#8BE9FD",
          bright_white = "#FFFFFF",
          menu = "#21222C",
          visual = "#3E4452",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
        }
        vim.g.dracula_show_end_of_buffer = false
        vim.g.dracula_transparent_bg = false

        vim.cmd([[colorscheme dracula]])
      end,
    })
  end,
}
