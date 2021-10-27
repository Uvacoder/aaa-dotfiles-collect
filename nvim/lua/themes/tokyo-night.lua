return {
  setup = function(use)
    use({
      "folke/tokyonight.nvim",

      config = function()
        vim.g.tokyonight_style = "night" -- storm, night, day
        vim.g.tokyonight_transparent = true
        vim.g.tokyonight_transparent_sidebar = true
        vim.g.tokyonight_hide_inactive_statusline = true
        vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
        vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

        vim.cmd([[colorscheme tokyonight]])
        vim.api.nvim_command("hi! clear SpellBad")
        vim.api.nvim_command("hi! spellbad gui=none guisp=red cterm=none ")
      end,
    })
  end,
}
