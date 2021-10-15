return {
  setup = function(use)
    use({
      "navarasu/onedark.nvim",

      config = function()
        vim.g.onedark_style = "deep"
        vim.g.onedark_diagnostics_undercurl = false
        vim.g.onedark_hide_ending_tildes = true
        vim.g.onedark_transparent_background = false
        require("onedark").setup()

        vim.cmd("hi! Cursor guifg=#1D3267")
        vim.cmd("hi! link Normal NvimTreeNormal")
      end,
    })
  end,
}
