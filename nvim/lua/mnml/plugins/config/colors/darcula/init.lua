return {
  setup = function(use)
    use({
      "dobbbri/darcula.nvim",
      requires = "rktjmp/lush.nvim",
      config = function()
        vim.cmd('colorscheme darcula')
      end
    })
  end
}
