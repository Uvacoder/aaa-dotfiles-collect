local get_hex = require("cokeline/utils").get_hex

vim.g.my_ui_colors = {
  fg = "#6272A4",
  bg = "#000000",
  bg_alt = "#090B10",
}

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
        vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.white })

        vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })

        vim.cmd(" highlight clear ColorColumn ")
        vim.cmd(" highlight clear colorcolumn ")
        vim.cmd(" highlight ColorColumn ctermbg=NONE guibg=#000000 guifg=#000000 ")
        vim.cmd(" highlight colorcolumn ctermbg=NONE guibg=#000000 guifg=#000000 ")
      end,
    })
  end,
}
