return {
  setup = function(use)
    use({
      'williamboman/mason.nvim',
      config = function()
        require('mason').setup({
          ui = {
            check_outdated_packages_on_open = true,
            border = vim.g.border_style,
          },
        })
      end,
    })
  end,
}
