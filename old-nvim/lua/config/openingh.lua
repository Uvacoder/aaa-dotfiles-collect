return {
  setup = function(use)
    use({
      'Almo7aya/openingh.nvim',
      config = function()
        local map = require('utils').map

        -- for repository page
        map('n', '<Leader>gr', ':OpenInGHRepo <CR>')

        -- for current file page
        map('n', '<Leader>gf', ':OpenInGHFile <CR>')
      end,
    })
  end,
}
