return {

  setup = function(use)
    use({
      "sainnhe/everforest",

      config = function()
        vim.g.everforest_background = "hard"
        vim.g.everforest_better_performance = 1
        vim.g.everforest_enable_italic = 1
        vim.g.everforest_sign_column_background = "none"
        vim.g.everforest_ui_contrast = "hight"
        vim.g.everforest_transparent_background = 0
        vim.g.everforest_disable_terminal_colors = 1
        vim.cmd("colorscheme everforest")

        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = vim.g.my_colors.red })
        vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.white })

        vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
      end,
    })
  end,
}
