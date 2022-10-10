return {
  setup = function(use)
    use({
      'ckipp01/stylua-nvim',
      config = function()
        require('stylua-nvim').setup({
          config_file = 'stylua.toml',
        })

        vim.cmd([[ command! FormatLua execute 'lua require("stylua-nvim").format_file()' ]])
      end,
    })
  end,
}
