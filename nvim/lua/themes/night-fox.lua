return {

  setup = function(use)
    use({
      "EdenEast/nightfox.nvim",

      config = function()
        local palettes = {
          bg0 = vim.g.my_ui_colors.bg_alt,
          bg1 = vim.g.my_ui_colors.bg,
        }
        local specs = {
          diag = {
            hint = vim.g.my_colors.white,
            error = vim.g.my_colors.red,
            warn = vim.g.my_colors.yellow,
            info = vim.g.my_colors.blue,
          },
          git = {
            add = vim.g.my_colors.green,
            changed = vim.g.my_colors.yellow,
            removed = vim.g.my_colors.red,
          },
        }

        require("nightfox").setup({
          options = {
            -- Compiled file's destination location
            compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            compile_file_suffix = "_compiled", -- Compiled file suffix
            transparent = false, -- Disable setting background
            terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
            dim_inactive = false, -- Non focused panes set to alternative background
            styles = { -- Style to be applied to different syntax groups
              comments = "italic",
              functions = "bold",
            },
            inverse = { -- Inverse highlight for different types
              visual = true,
            },
          },
          palettes = {
            nightfox = palettes,
            nordfox = palettes,
            duskfox = palettes,
          },
          specs = {
            nightfox = specs,
            nordfox = specs,
            duskfox = specs,
          },
          groups = {
            IndentBlanklineChar = { fg = vim.g.my_ui_colors.bg },
          },
        })

        vim.cmd("colorscheme nightfox") -- nightfox, duskfox, nordfox
      end,
    })
  end,
}
