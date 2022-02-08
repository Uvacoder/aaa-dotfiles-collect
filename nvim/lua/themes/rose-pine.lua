return {
  setup = function(use)
    use({
      "rose-pine/neovim",

      config = function()
        vim.g.rose_pine_variant = "moon" -- 'base', 'dawn', 'moon'
        vim.g.rose_pine_enable_italics = true
        vim.g.rose_pine_disable_background = true

        vim.cmd([[colorscheme rose-pine]])
      end,
    })
  end,
}
