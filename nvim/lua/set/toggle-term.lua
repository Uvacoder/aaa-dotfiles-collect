return {
  setup = function(use)
    use({
      "akinsho/toggleterm.nvim",

      config = function()
        require("toggleterm").setup{
          size = vim.o.columns * 0.5,
          open_mapping = [[<c-\>]],
          hide_numbers = true,
          shade_terminals = false,
          start_in_insert = true,
          insert_mappings = true,
          persist_size = true,
          direction = "vertical",
          close_on_exit = true,
          shell = vim.o.shell
        }
        function _G.set_terminal_keymaps()
          local opts = {noremap = true}
          vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
          vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
          vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
          vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
          vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
          vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
      end,
    })
  end,
}