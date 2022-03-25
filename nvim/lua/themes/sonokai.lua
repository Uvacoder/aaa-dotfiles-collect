vim.g.my_ui_colors = {
  fg = "#6272A4",
  bg = "#000000",
  bg_alt = "#090B10",
}
return {

  setup = function(use)
    use({
      "sainnhe/sonokai",

      config = function()
        vim.g.sonokai_style = "andromeda" -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia',
        vim.g.sonokai_better_performance = 1
        vim.g.sonokai_sign_column_background = "none"
        vim.g.sonokai_show_eob = 0
        vim.g.sonokai_disable_terminal_colors = 0
        vim.g.sonokai_ui_contrast = "hight"
        vim.g.sonokai_transparent_background = 1
        vim.cmd("colorscheme sonokai")

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
