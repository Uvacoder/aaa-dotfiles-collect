return {
  setup = function(use)
    use({
      "navarasu/onedark.nvim",

      config = function()
        require("onedark").setup({
          -- Main options --
          style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
          transparent = true, -- Show/hide background
          term_colors = true, -- Change terminal color as per the selected theme style
          ending_tildes = false, -- show the end-of-buffer tildes. By default they are hidden

          -- Change code style ---
          -- Options are italic, bold, underline, none
          -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
          code_style = {
            comments = "italic",
            keywords = "none",
            functions = "bold",
            strings = "none",
            variables = "none",
          },

          -- Custom Highlights --
          colors = {}, -- Override default colors
          highlights = {}, -- Override highlight groups

          -- Plugins Config --
          diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true, -- use undercurl for diagnostics
            background = false, -- use background color for virtual text
          },
        })

        require("onedark").load()
      end,
    })
  end,
}
