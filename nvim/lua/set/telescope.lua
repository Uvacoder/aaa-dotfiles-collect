return {
  setup = function(use)
    use {
      'nvim-telescope/telescope.nvim',

      requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'},

      config = function()
        require('telescope').setup{
          defaults = { file_ignore_patterns = {"node_modules"} }
        }
        vim.api.nvim_set_keymap('n', 'ss', ':lua require("telescope.builtin").spell_suggest()<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', 'ff', ':lua require("telescope.builtin").find_files()<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', 'fg', ':lua require("telescope.builtin").live_grep()<CR>', {noremap = true, silent = true})
        vim.api.nvim_set_keymap('n', 'bb', ':lua require("telescope.builtin").buffers()<CR>', {noremap = true, silent = true})
      end
    }
  end
}
