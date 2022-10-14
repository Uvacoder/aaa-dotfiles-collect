-- https://github.com/folke/tokyonight.nvim
return {
  setup = function(use)
    use({
      'folke/tokyonight.nvim',
      config = function()
        require('tokyonight').setup({
          style = "night",
          on_colors = function(colors)
            colors.bg = "#080910"
          end,
          on_highlights = function(hl, c)
            hl.NeoTreeFloatBorder = { bg = c.bg_dark, fg = c.fg_dark }
          end,
        })
        vim.cmd("colorscheme tokyonight")
      end,
    })
  end,
}
