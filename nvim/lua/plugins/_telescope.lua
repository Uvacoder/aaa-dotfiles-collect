local keymap = vim.api.nvim_set_keymap

require'telescope'.setup{
  defaults = {
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    scroll_strategy = 'cycle',
    selection_strategy = 'reset',
    layout_strategy = 'flex'
  }
}

keymap('n', '<C-p>', ':Telescope find_files<cr>', {noremap = true, silent =true})
keymap('n', '<C-g>', ':Telescope live_grep<cr>', {noremap = true, silent =true})
keymap('n', '<C-b>', ':Telescope buffers<cr>', {noremap = true, silent =true})
