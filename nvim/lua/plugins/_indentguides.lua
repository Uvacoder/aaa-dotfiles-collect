require('indent_guides').setup({
  indent_levels = 30;
  indent_guide_size = 1;
  indent_start_level = 1;
  indent_space_guides = true;
  indent_tab_guides = false;
  indent_soft_pattern = '\\s';
  exclude_filetypes = {
    'help',
    'dashboard',
    'dashpreview',
    'LuaTree',
    'vista',
    'sagahover'
  };
  even_colors = { fg = '#303059', bg = '#1C1936' };
  odd_colors  = { bg = '#303059', fg = '#1C1936' };
})
