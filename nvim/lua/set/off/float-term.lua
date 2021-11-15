return {
  setup = function(use)
    use({
      'voldikss/vim-floaterm',

      config = function()
        vim.g.floaterm_width = 0.45
        vim.g.floaterm_height = 0.9
        vim.g.floaterm_position = 'center'
        vim.g.floaterm_opener = 'vsplit'
        vim.g.floaterm_keymap_new = '<F11>'
        vim.g.floaterm_keymap_next = 'F12>'
        vim.g.floaterm_keymap_toggle = '<C-t>'
      end,
    })
  end,
}
