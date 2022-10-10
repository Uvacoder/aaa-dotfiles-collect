-- https://github.com/NvChad/nvim-colorizer.lua
return {
  setup = function(use)
    use({
      'NvChad/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup({
          filetypes = { '*' },
          user_default_options = {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            names = false, -- "Name" codes like Blue or blue
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            AARRGGBB = true, -- 0xAARRGGBB hex codes
            rgb_fn = false, -- CSS rgb() and rgba() functions
            hsl_fn = false, -- CSS hsl() and hsla() functions
            mode = 'background', -- Set the display mode.
            tailwind = true, -- Enable tailwind colors
            sass = { enable = false, parsers = { css } }, -- Enable sass colors
          },
        })
      end,
    })
  end,
}
