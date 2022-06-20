return {
  setup = function(use)
    use({
      'stevearc/aerial.nvim',
      config = function()
        local map = require("mnml.utils").map

        require('aerial').setup({
          default_direction = "float",
          backends = {'lsp'},
          filter_kind = false,
          close_on_select = true,
          show_guides = true,
          max_width = { 40, 0.2 },
          width = nil,
          min_width = 10,
          float = {
            border = vim.g.my.border,
            relative = "editor",
            max_height = 0.9,
            height = nil,
            min_height = { 8, 0.1 },

            override = function(conf)
              return conf
            end,
          },
        })

        map('n', '.', '<cmd>AerialToggle<cr>')
      end,
    })
  end,
}
