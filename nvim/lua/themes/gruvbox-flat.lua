return {
  setup = function(use)
    use({
      "eddyekofo94/gruvbox-flat.nvim",

      config = function()
        vim.g.gruvbox_italic_comments = true
        vim.g.gruvbox_transparent = true
        vim.g.gruvbox_hide_inactive_statusline = true
        vim.g.gruvbox_dark_sidebar = true
        vim.g.gruvbox_dark_float = true
        vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
        vim.g.gruvbox_colors = { hint = "orange", error = "#ff0000" }
        vim.g.gruvbox_theme = { TabLineSel = { bg = "orange" } }
        vim.g.gruvbox_flat_style = "hard"
        -- Load the colorscheme
        vim.cmd([[colorscheme gruvbox-flat]])

        local ns = 0
        -- vim.api.nvim_set_hl(ns, "Normal", { bg = vim.g.my_colors.bg })
        -- vim.api.nvim_set_hl(ns, "EndOfBuffer", { bg = vim.g.my_colors.bg })
        -- vim.api.nvim_set_hl(ns, "SignColumn", { bg = vim.g.my_colors.bg })
        -- vim.api.nvim_set_hl(ns, "CursorLine", { bg = vim.g.my_colors.bg_alt })
        -- vim.api.nvim_set_hl(ns, "VertSplit", { bg = vim.g.my_colors.bg, fg = vim.g.my_colors.bg_select })

        vim.api.nvim_set_hl(ns, "GitSignsAdd", { fg = vim.g.my_colors.green })
        vim.api.nvim_set_hl(ns, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(ns, "GitSignsDelete", { fg = vim.g.my_colors.red })
        vim.api.nvim_set_hl(ns, "DiagnosticSignHint", { fg = vim.g.my_colors.magenta })

        vim.api.nvim_set_hl(ns, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        vim.api.nvim_set_hl(ns, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        vim.api.nvim_set_hl(ns, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(ns, "IndentBlanklineChar", { fg = vim.g.my_colors.bg })
      end,
    })
  end,
}
