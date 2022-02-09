return {
  setup = function(use)
    use({
      "eddyekofo94/gruvbox-flat.nvim",

      config = function()
        vim.g.gruvbox_italic_comments = true
        vim.g.gruvbox_transparent = true
        vim.g.gruvbox_hide_inactive_statusline = true
        vim.g.gruvbox_dark_sidebar = true
        vim.g.gruvbox_dark_float = true
        vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
        vim.g.gruvbox_colors = { hint = "orange", error = "#ff0000" }
        vim.g.gruvbox_theme = { TabLineSel = { bg = "orange" } }
        vim.g.gruvbox_flat_style = "hard"
        -- Load the colorscheme
        vim.cmd([[colorscheme gruvbox-flat]])
      end,
    })
  end,
}
