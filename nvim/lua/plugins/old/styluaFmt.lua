return {
  setup = function(use)
    use({
      'ckipp01/stylua-nvim',
      run = 'cargo install stylua',
       config = function()
        require("stylua-nvim").setup {
          config_file = "stylua.toml"
        }
      end,
    })
  end,
}
