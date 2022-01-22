return {

  setup = function(use)
    use({
      "tiagovla/tokyodark.nvim",

      config = function()
        vim.g.tokyodark_transparent_background = false
        vim.g.tokyodark_enable_italic_comment = true
        vim.g.tokyodark_enable_italic = true
        vim.g.tokyodark_color_gamma = "1.0"

        vim.cmd([[colorscheme tokyodark]])

        local function replace_hl(group, val)
          local ns = vim.api.nvim_create_namespace("tokyodark")
          vim.api.nvim_set_hl(ns, group, val)
        end

        replace_hl("Normal", { bg = "#000000" })
        replace_hl("EndOfBuffer", { bg = "#000000" })
        replace_hl("SignColumn", { bg = "#000000" })

        replace_hl("String", { fg = "#fef08a" })
        replace_hl("Character", { fg = "#fef08a" })
        replace_hl("Title", { fg = "#fef08a" })

        replace_hl("GitSignsAdd", { fg = "#00FF5F" })
        replace_hl("GitSignsChange", { fg = "#F6C177" })
        replace_hl("GitSignsDelete", { fg = "#D70000" })

        replace_hl("DiagnosticSignHint", { fg = "#757575" })
        replace_hl("DiagnosticSignInfo", { fg = "#0087FF" })
        replace_hl("DiagnosticSignWarn", { fg = "#F6C177" })
        replace_hl("DiagnosticSignError", { fg = "#D70000" })
      end,
    })
  end,
}
