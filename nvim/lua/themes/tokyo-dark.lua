return {

  setup = function(use)
    use({
      "tiagovla/tokyodark.nvim",

      config = function()
        vim.g.tokyodark_transparent_background = false
        vim.g.tokyodark_enable_italic_comment = true
        vim.g.tokyodark_enable_italic = false
        vim.g.tokyodark_color_gamma = "1.0"

        vim.cmd([[colorscheme tokyodark]])

        local ns = vim.api.nvim_create_namespace("tokyodark")

        vim.api.nvim_set_hl(ns, "Normal", { bg = "#000000" })
        vim.api.nvim_set_hl(ns, "EndOfBuffer", { bg = "#000000" })
        vim.api.nvim_set_hl(ns, "SignColumn", { bg = "#000000" })

        vim.api.nvim_set_hl(ns, "String", { fg = "#FFD773" })
        vim.api.nvim_set_hl(ns, "Character", { fg = "#FFD773" })
        vim.api.nvim_set_hl(ns, "Title", { fg = "#FFD773" })

        vim.api.nvim_set_hl(ns, "GitSignsAdd", { fg = "#00FF5F" })
        vim.api.nvim_set_hl(ns, "GitSignsChange", { fg = "#FBFF00" })
        vim.api.nvim_set_hl(ns, "GitSignsDelete", { fg = "#FF0000" })
        vim.api.nvim_set_hl(ns, "DiagnosticSignHint", { fg = "#A400FF" })

        vim.api.nvim_set_hl(ns, "DiagnosticSignInfo", { fg = "#0087FF" })
        vim.api.nvim_set_hl(ns, "DiagnosticSignWarn", { fg = "#FBFF00" })
        vim.api.nvim_set_hl(ns, "DiagnosticSignError", { fg = "#FF0000" })

        vim.api.nvim_set_hl(ns, "IndentBlanklineChar", { fg = "#121212" })
      end,
    })
  end,
}
