require("telescope").setup({
  defaults = {
    prompt_position = "top",
    prompt_prefix = "▶",
    selection_caret = "● ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {horizontal = {mirror = false}, vertical = {mirror = false}},
    set_env = {['COLORTERM'] = 'truecolor'},
    file_previewer = require"telescope.previewers".vim_buffer_cat.new,
    grep_previewer = require"telescope.previewers".vim_buffer_vimgrep.new,
    qflist_previewer = require"telescope.previewers".vim_buffer_qflist.new,
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    preview_cutoff = 80,
    layout_strategy = "flex"
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
})
require('telescope').load_extension('fzy_native')

local keymap = vim.keymap.set
local options = {noremap = true, silent = true}

keymap('n', '<C-p>', ':Telescope find_files<cr>', options)
keymap('n', '<C-g>', ':Telescope live_grep<cr>', options)
keymap('n', '<C-b>', ':Telescope buffers<cr>', options)
