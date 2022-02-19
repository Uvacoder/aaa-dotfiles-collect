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
          plugins_integrations = {
            bufferline = true,
            gitsigns = true,
            telescope = true,
            nvim_tree = true,
            indent_blankline = true,
          },
        })

        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = vim.g.my_colors.red })
        vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.purple })

        vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_colors.bg })
      end,
    })
  end,
}
