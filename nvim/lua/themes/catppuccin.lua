return {
  setup = function(use)
    use({
      "catppuccin/nvim",

      config = function()
        local catppuccin = require("catppuccin")
        -- configure it
        catppuccin.setup({
          transparent_background = true,
          term_colors = false,
          styles = {
            comments = "italic",
            functions = "bold",
            keywords = "NONE",
            strings = "NONE",
            variables = "NONE",
          },
          integrations = {
            treesitter = true,
            native_lsp = {
              enabled = true,
              virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
              },
              underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
              },
            },
            lsp_trouble = true,
            cmp = true,
            lsp_saga = false,
            gitgutter = false,
            gitsigns = true,
            telescope = true,
            nvimtree = {
              enabled = true,
              show_root = false,
            },
            which_key = false,
            indent_blankline = {
              enabled = true,
              colored_indent_levels = false,
            },
            dashboard = false,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            bufferline = true,
            markdown = true,
            lightspeed = false,
            ts_rainbow = true,
            hop = false,
            notify = false,
            telekasten = false,
          },
        })
        vim.cmd([[colorscheme catppuccin]])
      end,
    })
  end,
}
