-- https://github.com/folke/tokyonight.nvim
return {
  setup = function(use)
    use({
      'folke/tokyonight.nvim',
      config = function()
        require('tokyonight').setup({
          style = "storm",
          sidebars = { "qf", "help", "terminal", "parker" },
          on_colors = function(colors)
            colors.bg = "#000000"
          end,
          on_highlights = function(hl, c)
            hl.CursorLine = { bg = "#16161e" }
            hl.CursorLineNr = { bg = "#16161e" }
            hl.NeoTreeNormal = { bg = c.bg }
            hl.NeoTreeNormalNC= { bg = c.bg }
            hl.NeoTreeFloatBorder = { bg = c.bg, fg = c.fg }
            hl.NeoTreeCursorLine = { bg = '#16161e' }
            hl.Pmenu = { bg = c.bg, fg = c.fg }
            hl.PmenuSel = { bg = '#16161e' }
          end,
        })
        vim.cmd("colorscheme tokyonight")
      end,
    })
  end,
}
