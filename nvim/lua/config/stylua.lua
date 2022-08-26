return {
  setup = function(use)
    use({
      'ckipp01/stylua-nvim',
      config = function()
        require('stylua-nvim').setup({
          config_file = 'stylua.toml',
        })

        local map = require('utils').map

        map('n', '<leader>f', "<cmd>lua require('stylua-nvim').format_file()<CR>")
      end,
    })
  end,
}
