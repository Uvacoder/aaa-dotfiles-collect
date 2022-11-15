-- https://github.com/windwp/nvim-autopairs
return {
  setup = function(use)
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = function()
        local hide_in_width = function()
          return vim.fn.winwidth(0) > 80
        end

        local diagnostics = {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = {
            error = vim.g.diagnostics_sign.error,
            warn = vim.g.diagnostics_sign.warn,
            info = vim.g.diagnostics_sign.info,
            hint = vim.g.diagnostics_sign.hint,
          },
          update_in_insert = true,
        }

        local diff = {
          "diff",
          symbols = {
            added = vim.g.git_signs.added,
            modified = vim.g.git_signs.modified,
            removed = vim.g.git_signs.removed,
          }, -- changes diff symbols
          cond = hide_in_width,
        }

        local filetype = {
          "filetype",
          icons_enabled = false,
          icon = nil,
        }

        local branch = {
          "branch",
          icons_enabled = true,
          icon = "",
        }

        local location = {
          "location",
          padding = 0,
        }

        require("lualine").setup({
          options = {
            icons_enabled = true,
            theme = "iceberg_dark",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
            always_divide_middle = false,
          },
          sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { branch, diff, diagnostics },
            lualine_x = { location, "filetype", "encoding", "fileformat" },
            lualine_y = {},
            lualine_z = {},
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "filename" },
            lualine_x = { "location" },
            lualine_y = {},
            lualine_z = {},
          },
          tabline = {},
          extensions = {},
        })
      end,
    })
  end,
}
