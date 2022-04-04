vim.g.my_ui_colors = {
  fg = "#6e6a86",
  bg = "#090B10",
  bg_alt = "#0D1117",
  -- bg = "#191523",
  -- bg_alt = "#140D1B",
}

return {
  setup = function(use)
    use({
      "jgvw/xcode-colors.nvim",

      config = function()
        require("xcode-colors").setup({
          background = "dark", -- dynamic, dark, light
          extensions = { "treesitter" },
        })

        vim.cmd([[colorscheme xcode]])

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
        vim.api.nvim_set_hl(0, "Normal", { bg = vim.g.my_ui_colors.bg })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = vim.g.my_ui_colors.bg })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = vim.g.my_ui_colors.bg })

        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.white })
        vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })
      end,
    })
  end,
}
