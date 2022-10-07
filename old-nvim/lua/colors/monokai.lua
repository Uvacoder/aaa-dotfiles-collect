-- https://github.com/ofirgall/ofirkai.nvim
return {
  setup = function(use)
    use({
      'ofirgall/ofirkai.nvim',
      config = function()
        local bg_color = '#121014'

        require('ofirkai').setup({
          scheme = require('ofirkai').scheme, -- Option to override scheme
          custom_hlgroups = { -- Option to add/override highlight groups
            Normal = { bg = bg_color },
            Pmenu = { bg = bg_color },
            LineNr = { bg = bg_color },
            SignColumn = { bg = bg_color },
            Floaterm = { bg = bg_color },
            FloatermBorder = { bg = bg_color },
          },
        })
      end,
    })
  end,
}
