return {
  setup = function(use)
    use({
      "RRethy/nvim-base16",
      config = function()
        require("mnml.plugins.config.colors.base16.my-tokyo")
        -- require("mnml.plugins.config.colors.base16.rose-pine")
        -- require("mnml.plugins.config.colors.base16.gruvbox-dark-hard")
        -- require("mnml.plugins.config.colors.base16.onedark")
        -- require("mnml.plugins.config.colors.base16.material-darker")

        require("mnml.plugins.config.colors.base16.fixes")
      end,
    })
  end,
}
