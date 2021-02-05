require'telescope'.setup{
  defaults = {
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    scroll_strategy = 'cycle',
    selection_strategy = 'reset',
    layout_strategy = 'flex',
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    layout_defaults = {
      horizontal = {
        width_padding = 0.1,
        height_padding = 0.1,
        preview_width = 0.6
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5
      }
    }
  }
}

local keymap = require("astronauta.keymap")

keymap.nnoremap{'<C-p>', ':Telescope find_files<cr>'}
keymap.nnoremap{'<C-g>', ':Telescope live_grep<cr>'}
keymap.nnoremap{'<C-b>', ':Telescope buffers<cr>'}
