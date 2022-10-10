return {
  setup = function(use)
    use({
      'Almo7aya/openingh.nvim',
      config = function()
        local keymap = vim.keymap.set
        local opts = { noremap = true, silent = true }

        -- for repository page
        keymap('n', '<Leader>gr', ':OpenInGHRepo <CR>', opts)
        -- for current file page
        keymap('n', '<Leader>gf', ':OpenInGHFile <CR>', opts)
      end,
    })
  end,
}
