return {
  setup = function(use)
    use({
      'NvChad/nvim-colorizer.lua',
      config = function()
        local options = {
          filetypes = {
            "*",
          },
          user_default_options = {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            names = false, -- "Name" codes like Blue
            RRGGBBAA = false, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            mode = "background", -- Set the display mode.
          },
        }

        require("colorizer").setup(options["filetypes"], options["user_default_options"])
      end,
    })
  end,
}
