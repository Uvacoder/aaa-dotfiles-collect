return {
  setup = function(use)
    use({
      "akinsho/toggleterm.nvim",
      config = function()
        require("toggleterm").setup({
          open_mapping = [[<c-t>]],
          hide_numbers = true,
          shade_terminals = true,
          shading_factor = 2,
          start_in_insert = true,
          insert_mappings = true,
          persist_size = true,
          direction = "float",
          close_on_exit = true,
          shell = vim.o.shell,
          highlights = {
            FloatBorder = { link = "Pmenu" },
            Normal = { link = "Normal" },
            -- NormalFloat = { link = "Pmenu" },
          },
          float_opts = {
            height = 16,
            width = 80,
            border = vim.g.border_style,
          },
        })

        function _G.set_terminal_keymaps()
          local keymap = vim.api.nvim_buf_set_keymap
          local opts = { noremap = true, silent = true }
          keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
          keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
          keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
          keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
          keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
      end,
    })
  end,
}
