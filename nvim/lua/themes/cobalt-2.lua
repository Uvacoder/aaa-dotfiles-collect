return {

  setup = function(use)
    use({
      "lalitmee/cobalt2.nvim",
      requires = "tjdevries/colorbuddy.vim",

      config = function()
        require("colorbuddy").colorscheme("cobalt2")

        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = vim.g.my_colors.red })
        vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.white })

        vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "VertSplit", { bg = vim.g.my_ui_colors.bg })
        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
      end,
    })
  end,
}
