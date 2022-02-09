return {

  setup = function(use)
    use({
      "NTBBloodbath/doom-one.nvim",

      config = function()
        require("doom-one").setup({
          cursor_coloring = true,
          terminal_colors = false,
          italic_comments = true,
          enable_treesitter = true,
          transparent_background = true,
          pumblend = {
            enable = false,
            transparency_amount = 10,
          },
          -- plugins_integrations = {
          --   neorg = false,
          --   barbar = false,
          --   bufferline = true,
          --   gitgutter = false,
          --   gitsigns = true,
          --   telescope = true,
          --   neogit = false,
          --   nvim_tree = true,
          --   dashboard = false,
          --   startify = false,
          --   whichkey = false,
          --   indent_blankline = true,
          --   vim_illuminate = false,
          --   lspsaga = false,
          -- },
        })
      end,
    })
  end,
}
