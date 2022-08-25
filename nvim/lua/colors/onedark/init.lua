-- https://github.com/navarasu/onedark.nvim
return {
  setup = function(use)
    use({
      'navarasu/onedark.nvim',
      config = function()
        local bg_color = "#141B24"

        require('onedark').setup  {
          style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
          transparent = false,  -- Show/hide background
          term_colors = true, -- Change terminal color as per the selected theme style
          ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
          cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
          code_style = {
              comments = 'italic',
              keywords = 'none',
              functions = 'bold',
              strings = 'none',
              variables = 'none'
          },
          colors = {
            bg0 =  bg_color,
          }, -- Override default colors
          highlights = {
            TabLineFill = {bg= bg_color},
            DiffAdd = {fg="#95EC30", bg= bg_color},
            DiffChange = {fg="#FFC600", bg= bg_color},
            DiffDelete = {fg="#FF0069", bg= bg_color},
            -- NeoTreeNormal = {bg="#21283b"},
            -- NeoTreeNormalNC = {bg="#21283b"},
            -- NeoTreeEndOfBuffer = {bg="#21283b"},
            NeoTreeWinSeparator = {bg=bg_color},
            NeoTreeCursorLine = {bg="#54B0FD", fg= bg_color},
          }, -- Override highlight groups
          diagnostics = {
              darker = true, -- darker colors for diagnostic
              undercurl = true,   -- use undercurl instead of underline for diagnostics
              background = true,    -- use background color for virtual text
          },
        }
        vim.cmd("colorscheme onedark")
      end,
    })
  end,
}
