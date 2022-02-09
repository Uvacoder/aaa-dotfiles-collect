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

        vim.api.nvim_set_hl(ns, "String", { fg = "#f6b667" })
        vim.api.nvim_set_hl(ns, "Character", { fg = "#f6b667" })
        vim.api.nvim_set_hl(ns, "Title", { fg = "#f6b667" })

        vim.api.nvim_set_hl(ns, "Normal", { bg = vim.g.my_colors.bg })
        vim.api.nvim_set_hl(ns, "EndOfBuffer", { bg = vim.g.my_colors.bg })
        vim.api.nvim_set_hl(ns, "SignColumn", { bg = vim.g.my_colors.bg })
        -- vim.api.nvim_set_hl(ns, "VertSplit", { bg = vim.g.my_colors.bg, fg = vim.g.my_colors.bg_select })
        -- vim.api.nvim_set_hl(ns, "CursorLine", { bg = vim.g.my_colors.bg_alt })
        -- vim.api.nvim_set_hl(ns, "CursorLineNC", { bg = vim.g.my_colors.bg_alt })

        vim.api.nvim_set_hl(ns, "NvimTreeNormal", { bg = vim.g.my_colors.bg_alt })
        vim.api.nvim_set_hl(ns, "NvimTreeEndOfBuffer", { bg = vim.g.my_colors.bg_alt })
        vim.api.nvim_set_hl(ns, "NvimTreeVertSplit", { fg = vim.g.my_colors.bg_alt })
        vim.api.nvim_set_hl(ns, "NvimTreeCursorLine", { bg = vim.g.my_colors.bg_select, fg = vim.g.my_colors.white })

        vim.api.nvim_set_hl(ns, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(ns, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(ns, "GitSignsDelete", { fg = vim.g.my_colors.red })
        vim.api.nvim_set_hl(ns, "DiagnosticSignHint", { fg = vim.g.my_colors.purple })

        vim.api.nvim_set_hl(ns, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(ns, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(ns, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(ns, "IndentBlanklineChar", { fg = vim.g.my_colors.bg })
      end,
    })
  end,
}
