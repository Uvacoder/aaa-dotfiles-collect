return {
  setup = function(use)
    use({
      's1n7ax/nvim-terminal',
      config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup({
          toggle_keymap = '.',
        })
      end,
    })
  end,
}
