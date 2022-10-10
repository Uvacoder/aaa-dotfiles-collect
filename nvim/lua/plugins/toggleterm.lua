return {
  setup = function(use)
    use({
      'akinsho/toggleterm.nvim',
      config = function()
        require('toggleterm').setup({
          size = 18,
          open_mapping = [[<c-t>]],
          hide_numbers = true,
          shade_terminals = true,
          shading_factor = 2,
          start_in_insert = true,
          insert_mappings = true,
          persist_size = true,
          direction = 'float',
          close_on_exit = true,
          shell = vim.o.shell,
          highlights = {
            Normal = { link = 'Normal' },
            NormalFloat = { link = 'TelescopeNormal' },
            FloatBorder = { link = 'TelescopeBorder' },
          },
          float_opts = {
            border = vim.g.border_style,
            highlights = {
              border = 'NeoTreeNormal',
              background = 'NeoTreeNormal',
            },
          },
        })

        function _G.set_terminal_keymaps()
          local keymap = vim.api.nvim_buf_set_keymap
          local opts = { noremap = true, silent = true }
          keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
          keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
          keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
          keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
          keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
      end,
    })
  end,
}
