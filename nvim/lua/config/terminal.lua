return {
  setup = function(use)
    use({
      'voldikss/vim-floaterm',
      config = function()
        vim.g.floaterm_width = 0.7
        vim.g.floaterm_height = 0.9
        vim.g.floaterm_opener = 'float'
        vim.g.floaterm_keymap_new = '<F7>'
        vim.g.floaterm_keymap_prev = '<F8>'
        vim.g.floaterm_keymap_next = '<F9>'
        vim.g.floaterm_keymap_toggle = '.'
      end,
    })
  end,
}
