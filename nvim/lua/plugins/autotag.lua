-- https://github.com/windwp/nvim-ts-autotag
return {
  setup = function(use)
    use({
      'windwp/nvim-ts-autotag',
      config = function()
        require('nvim-ts-autotag').setup({
          filetypes = {
            'html',
            'javascript',
            'typescript',
            'vue',
            'jsx',
            'javascriptreact',
            'typescriptreact',
            'tsx',
            'markdown',
          },
        })
      end,
    })
  end,
}
