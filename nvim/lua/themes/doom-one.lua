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
            enable = true,
            transparency_amount = 10,
          },
          -- plugins_integrations = {
          --   neorg = false,
          --   barbar = false,
          --   bufferline = true,
          --   gitgutter = false,
          --   gitsigns = true,
          --   telescope = true,
          --   neogit = false,
          --   nvim_tree = true,
          --   dashboard = false,
          --   startify = false,
          --   whichkey = false,
          --   indent_blankline = true,
          --   vim_illuminate = false,
          --   lspsaga = false,
          -- },
        })

        local ns = 0 --- vim.api.nvim_create_namespace("doomone")

        vim.api.nvim_set_hl(ns, "Normal", { bg = vim.g.my_colors.bg })
        vim.api.nvim_set_hl(ns, "EndOfBuffer", { bg = vim.g.my_colors.bg })
        vim.api.nvim_set_hl(ns, "SignColumn", { bg = vim.g.my_colors.bg })
        vim.api.nvim_set_hl(ns, "VertSplit", { bg = vim.g.my_colors.bg, fg = vim.g.my_colors.fg })

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
