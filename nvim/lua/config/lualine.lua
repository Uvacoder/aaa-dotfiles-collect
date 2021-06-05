require('lualine').setup({
  options = {
    theme = 'dark', 
    -- section_separators = {'', ''},
    section_separators = {'▏', '▏'},
    component_separators = {'▏', '▏'},
    icons_enabled = false,
    padding = 1,

  },
  sections = {
    lualine_a = {{'mode', upper = true}, {'g:coc_status', 'bo:filetype'}},
    lualine_z = {{'branch'}, {'diff'}},
    lualine_b = {{'filename', file_status = true}, {'diagnostics', sources = {'coc', 'ale'}}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
    lualine_c = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {  }
  },
  extensions = {'nvim-tree'}
})
