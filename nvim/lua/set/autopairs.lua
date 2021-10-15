return {
  setup = function(use)
    use({
      "windwp/nvim-autopairs",

      config = function()
        require("nvim-autopairs").setup({
          disable_filetype = { "TelescopePrompt", "vim" },
        })
      end,
    })
  end,
}
