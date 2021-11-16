return {
  setup = function(use)
    use({
      "navarasu/onedark.nvim",

      config = function()
        vim.g.onedark_style = "deep"
        vim.g.onedark_italic_comment = true
        vim.g.onedark_disable_terminal_colors = false
        vim.g.onedark_darker_diagnostics = true
        vim.g.onedark_diagnostics_undercurl = true
        vim.g.onedark_hide_ending_tildes = true
        vim.g.onedark_transparent_background = true
        require("onedark").setup()
      end,
    })
  end,
}
