return {
  setup = function(use)
    use({
      'wuelnerdotexe/vim-astro',
      config = function()
        vim.g.astro_typescript = 'enable'
      end,
    })
  end,
}
