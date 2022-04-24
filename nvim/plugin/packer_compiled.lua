-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n˜\3\0\0\a\0\24\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\0015\0\n\0006\1\v\0=\1\f\0006\1\6\0009\1\r\0019\1\14\1'\3\15\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\16\0'\5\19\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\20\0'\5\21\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\22\0'\5\23\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>3<C-\\><C-n><CMD>lua require(\"FTerm\").exit()<CR>\n<C-q>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\vbuffer\nbufnr\1\0\0\vborder\14my_border\6g\bvim\15dimensions\1\0\1\ahl\19NvimTreeNormal\1\0\2\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\nFTerm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["ctrlsf.vim"] = {
    config = { "\27LJ\2\nÓ\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nl\0\0\5\0\5\1\n5\0\0\0004\1\3\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0?\2\0\0=\1\4\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\0\2\bexe\14prettierd\nstdin\2\3ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0004\6\3\0>\0\1\6=\6\a\0054\6\3\0>\0\1\6=\6\b\0054\6\3\0>\0\1\6=\6\t\0054\6\3\0>\0\1\6=\6\n\0054\6\3\0>\0\1\6=\6\v\0054\6\3\0>\0\1\6=\6\f\0054\6\3\0>\0\1\6=\6\r\0054\6\3\0>\0\1\6=\6\14\0054\6\3\0>\0\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\5=\5\17\4B\2\2\0016\2\18\0009\2\19\2'\4\20\0B\2\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nø\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n¢\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\25show_current_context\2\31show_current_context_start\1\tchar\6 $indent_blankline_char_blankline\b‚îÇ\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\në\f\0\0\b\0U\0ø\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\25always_divide_middle\1\17globalstatus\2\18icons_enabled\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\nç\2\0\0\5\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\a\0006\4\3\0009\4\4\0049\4\5\0049\4\6\4=\4\b\0036\4\3\0009\4\4\0049\4\5\0049\4\t\4=\4\n\0036\4\3\0009\4\4\0049\4\5\0049\4\v\4=\4\f\0036\4\3\0009\4\4\0049\4\5\0049\4\r\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\vcolors\1\0\3\17line_opacity\4ö≥ÊÃ\tô≥Ê˛\3\15focus_only\1\15set_cursor\2\vvisual\vpurple\vinsert\tblue\vdelete\bred\tcopy\1\0\0\vyellow\14my_colors\6g\bvim\nsetup\nmodes\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequire¨\14\1\0\a\0:\0W6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\3\0003\5\4\0=\5\5\4>\4\1\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\15\0006\5\v\0009\5\f\0059\5\r\0059\5\14\5=\5\16\4=\4\14\0035\4\17\0=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0024\3\0\0=\3\28\0025\3\"\0005\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\0035\4%\0005\5$\0=\5\26\4=\4\27\3=\3&\0025\3'\0005\4)\0005\5(\0=\5\26\4=\4\27\3=\3*\0025\3-\0005\4+\0005\5,\0=\5\26\4=\4\27\3=\3\22\2B\0\2\0015\0.\0006\1/\0=\0010\0006\1\v\0009\0011\0019\0012\1'\0033\0'\0044\0'\0055\0\18\6\0\0B\1\5\0016\1\v\0009\0011\0019\0012\1'\0033\0'\0046\0'\0057\0\18\6\0\0B\1\5\0016\1\v\0009\0011\0019\0012\1'\0033\0'\0048\0'\0059\0\18\6\0\0B\1\5\1K\0\1\0&<CMD>Neotree float git_status<CR>\6[\29<CMD>Neotree buffers<CR>\6.\28<CMD>Neotree toggle<CR>\6,\6n\bset\vkeymap\vbuffer\nbufnr\1\0\0\1\0\0\1\0\a\agr\20git_revert_file\6A\16git_add_all\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6.\rset_root\6/\17fuzzy_finder\t<bs>\16navigate_up\n<c-x>\17clear_filter\6f\21filter_on_submit\6H\18toggle_hidden\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6d\vdelete\6a\badd\6t\16open_tabnew\6m\tmove\6r\vrename\6p\25paste_from_clipboard\6s\16open_vsplit\6y\22copy_to_clipboard\6x\21cut_to_clipboard\6c\tcopy\6C\15close_node\6A\18add_directory\6R\frefresh\6q\17close_window\6S\15open_split\t<cr>\topen\1\0\2\rposition\nfloat\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\nadded\b‚úö\fdeleted\b‚úñ\frenamed\bÔïî\rmodified\bÔëÑ\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\bvim\ticon\1\0\0\1\0\4\18folder_closed\bÔÅî\17folder_empty\bÔ∞ä\16folder_open\bÔÅ∏\fdefault\bÓòí\19event_handlers\1\0\4\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0ƒ\a\1\0\r\0;\0{6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\f\0005\a\t\0009\b\6\0039\b\a\b9\b\b\bB\b\1\2=\b\n\a9\b\6\0039\b\a\b9\b\b\bB\b\1\2=\b\v\a=\a\a\0065\a\14\0003\b\r\0=\b\15\a=\a\16\0065\a\20\0009\b\17\0039\n\17\0039\n\18\n)\f¸ˇB\n\2\0025\v\19\0B\b\3\2=\b\21\a9\b\17\0039\n\17\0039\n\18\n)\f\4\0B\n\2\0025\v\22\0B\b\3\2=\b\23\a9\b\17\0039\n\17\0039\n\24\nB\n\1\0025\v\25\0B\b\3\2=\b\26\a9\b\17\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\17\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\17\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\17\0069\a\6\0039\a'\a4\t\3\0005\n(\0>\n\1\t5\n)\0>\n\2\t4\n\3\0005\v*\0>\v\1\nB\a\3\2=\a'\0065\a/\0009\b+\0005\n,\0003\v-\0=\v.\nB\b\2\2=\b0\a=\a1\6B\4\2\0019\4\5\0039\0042\4'\0063\0005\a5\0004\b\3\0005\t4\0>\t\1\b=\b'\aB\4\3\0019\4\5\0039\0042\4'\0066\0005\a8\0009\b\17\0039\b7\b9\b2\bB\b\1\2=\b\17\a9\b\6\0039\b'\b4\n\3\0005\v9\0>\v\1\n4\v\3\0005\f:\0>\f\1\vB\b\3\2=\b'\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\nsetup\bcmp\fluasnip\0\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÌ\a\0\2\t\0*\0ï\0015\2\0\0=\1\1\0029\3\2\0+\4\1\0=\4\3\0039\3\2\0+\4\1\0=\4\4\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\r\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\b\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\16\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\15\0036\3\5\0009\3\17\0039\3\18\3\18\5\1\0'\6\19\0'\a\20\0B\3\4\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\24\0006\a\5\0009\a\6\a9\a\25\a9\a\26\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\27\0006\a\5\0009\a\6\a9\a\25\a9\a\28\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\29\0006\a\5\0009\a\6\a9\a\25\a9\a\n\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\30\0006\a\5\0009\a\6\a9\a\25\a9\a\31\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6 \0006\a\5\0009\a\6\a9\a\25\a9\a!\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\"\0006\a\5\0009\a\6\a9\a\25\a9\a#\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6$\0006\a\5\0009\a\6\a9\a\25\a9\a%\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6&\0006\a\5\0009\a\6\a9\a\25\a9\a'\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6(\0006\a\5\0009\a\6\a9\a\25\a9\a)\a\18\b\2\0B\3\5\1K\0\1\0\16code_action\15<leader>ca\15references\agr\vrename\15<leader>rn\20type_definition\14<leader>D\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\agD\6n\bset\vkeymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities\vbuffer\1\0\0¶\a\1\0\14\0/\0l6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0016\0\r\0'\2\14\0B\0\2\0023\1\15\0006\2\0\0009\2\16\0029\2\17\0029\2\18\2B\2\1\0026\3\r\0'\5\19\0B\3\2\0029\3\20\3\18\5\2\0B\3\2\2\18\2\3\0005\3\21\0006\4\22\0\18\6\3\0B\4\2\4H\a\tÄ6\t\r\0'\v\14\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\1\25\v=\2\26\vB\t\2\1F\a\3\3R\aı6\4\0\0009\4\5\0049\4\27\0045\6!\0005\a\28\0006\b\0\0009\b\29\b9\b\30\b9\b\31\b=\b \a=\a\"\0065\a#\0006\b\0\0009\b\29\b9\b\30\b=\b$\a=\a%\6B\4\2\0016\4\22\0006\6\0\0009\6\29\0069\6&\0069\6'\6B\4\2\4H\a\fÄ'\t(\0\18\n\a\0&\t\n\t6\n\0\0009\n)\n9\n*\n\18\f\t\0005\r+\0=\b,\r=\t-\r=\t.\rB\n\3\1F\a\3\3R\aÚK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\nfloat\vborder\1\0\5\14focusable\1\vprefix\5\vsource\valways\vheader\5\nstyle\fminimal\17virtual_text\1\0\4\21update_in_insert\2\14underline\2\nsigns\2\18severity_sort\1\vprefix\tHint\14my_border\6g\1\0\1\vsource\valways\vconfig\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0\14lspconfig\frequire\15setloclist\14<leader>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\14<leader>e\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nt\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\4\0=\0\1\1K\0\1\0\bvim\1\0\3\vstages\vstatic\18minimum_width\3\n\vrender\fminimal\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireï\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21code_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarkpro.nvim"] = {
    config = { "\27LJ\2\n√\3\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\0034\4\0\0=\4\b\0034\4\0\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\1\2\0019\1\14\0B\1\1\1K\0\1\0\tload\foptions\1\0\5\tbold\2\14underline\2\20terminal_colors\2\14undercurl\2\vitalic\2\vstyles\1\0\2\rcomments\vitalic\14functions\tbold\22filetype_hlgroups\rhlgroups\vcolors\fonedark\1\0\0\1\0\f\afg\f#abb2bf\ngreen\f#8CCB76\bred\f#FB467B\nwhite\f#abb2bf\vorange\f#EF8A17\nblack\f#282c34\vyellow\f#e5c07b\abg\f#000000\tcyan\f#56D6B4\tgray\f#5c6370\tblue\f#53AAF4\vpurple\f#CB6CFE\1\0\1\ntheme\fonedark\nsetup\15onedarkpro\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nø\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n˜\3\0\0\a\0\24\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\0015\0\n\0006\1\v\0=\1\f\0006\1\6\0009\1\r\0019\1\14\1'\3\15\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\16\0'\5\19\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\20\0'\5\21\0\18\6\0\0B\1\5\0016\1\6\0009\1\r\0019\1\14\1'\3\18\0'\4\22\0'\5\23\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>3<C-\\><C-n><CMD>lua require(\"FTerm\").exit()<CR>\n<C-q>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\vbuffer\nbufnr\1\0\0\vborder\14my_border\6g\bvim\15dimensions\1\0\1\ahl\19NvimTreeNormal\1\0\2\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\25show_current_context\2\31show_current_context_start\1\tchar\6 $indent_blankline_char_blankline\b‚îÇ\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequire¨\14\1\0\a\0:\0W6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\3\0003\5\4\0=\5\5\4>\4\1\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\15\0006\5\v\0009\5\f\0059\5\r\0059\5\14\5=\5\16\4=\4\14\0035\4\17\0=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0024\3\0\0=\3\28\0025\3\"\0005\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\0035\4%\0005\5$\0=\5\26\4=\4\27\3=\3&\0025\3'\0005\4)\0005\5(\0=\5\26\4=\4\27\3=\3*\0025\3-\0005\4+\0005\5,\0=\5\26\4=\4\27\3=\3\22\2B\0\2\0015\0.\0006\1/\0=\0010\0006\1\v\0009\0011\0019\0012\1'\0033\0'\0044\0'\0055\0\18\6\0\0B\1\5\0016\1\v\0009\0011\0019\0012\1'\0033\0'\0046\0'\0057\0\18\6\0\0B\1\5\0016\1\v\0009\0011\0019\0012\1'\0033\0'\0048\0'\0059\0\18\6\0\0B\1\5\1K\0\1\0&<CMD>Neotree float git_status<CR>\6[\29<CMD>Neotree buffers<CR>\6.\28<CMD>Neotree toggle<CR>\6,\6n\bset\vkeymap\vbuffer\nbufnr\1\0\0\1\0\0\1\0\a\agr\20git_revert_file\6A\16git_add_all\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6.\rset_root\6/\17fuzzy_finder\t<bs>\16navigate_up\n<c-x>\17clear_filter\6f\21filter_on_submit\6H\18toggle_hidden\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6d\vdelete\6a\badd\6t\16open_tabnew\6m\tmove\6r\vrename\6p\25paste_from_clipboard\6s\16open_vsplit\6y\22copy_to_clipboard\6x\21cut_to_clipboard\6c\tcopy\6C\15close_node\6A\18add_directory\6R\frefresh\6q\17close_window\6S\15open_split\t<cr>\topen\1\0\2\rposition\nfloat\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\nadded\b‚úö\fdeleted\b‚úñ\frenamed\bÔïî\rmodified\bÔëÑ\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\bvim\ticon\1\0\0\1\0\4\18folder_closed\bÔÅî\17folder_empty\bÔ∞ä\16folder_open\bÔÅ∏\fdefault\bÓòí\19event_handlers\1\0\4\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireï\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21code_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\nÓ\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\4\0=\0\1\1K\0\1\0\bvim\1\0\3\vstages\vstatic\18minimum_width\3\n\vrender\fminimal\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: onedarkpro.nvim
time([[Config for onedarkpro.nvim]], true)
try_loadstring("\27LJ\2\n√\3\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\0034\4\0\0=\4\b\0034\4\0\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\1\2\0019\1\14\0B\1\1\1K\0\1\0\tload\foptions\1\0\5\tbold\2\14underline\2\20terminal_colors\2\14undercurl\2\vitalic\2\vstyles\1\0\2\rcomments\vitalic\14functions\tbold\22filetype_hlgroups\rhlgroups\vcolors\fonedark\1\0\0\1\0\f\afg\f#abb2bf\ngreen\f#8CCB76\bred\f#FB467B\nwhite\f#abb2bf\vorange\f#EF8A17\nblack\f#282c34\vyellow\f#e5c07b\abg\f#000000\tcyan\f#56D6B4\tgray\f#5c6370\tblue\f#53AAF4\vpurple\f#CB6CFE\1\0\1\ntheme\fonedark\nsetup\15onedarkpro\frequire\0", "config", "onedarkpro.nvim")
time([[Config for onedarkpro.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\në\f\0\0\b\0U\0ø\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\25always_divide_middle\1\17globalstatus\2\18icons_enabled\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nl\0\0\5\0\5\1\n5\0\0\0004\1\3\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0?\2\0\0=\1\4\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\0\2\bexe\14prettierd\nstdin\2\3ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0004\6\3\0>\0\1\6=\6\a\0054\6\3\0>\0\1\6=\6\b\0054\6\3\0>\0\1\6=\6\t\0054\6\3\0>\0\1\6=\6\n\0054\6\3\0>\0\1\6=\6\v\0054\6\3\0>\0\1\6=\6\f\0054\6\3\0>\0\1\6=\6\r\0054\6\3\0>\0\1\6=\6\14\0054\6\3\0>\0\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\5=\5\17\4B\2\2\0016\2\18\0009\2\19\2'\4\20\0B\2\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0ƒ\a\1\0\r\0;\0{6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\f\0005\a\t\0009\b\6\0039\b\a\b9\b\b\bB\b\1\2=\b\n\a9\b\6\0039\b\a\b9\b\b\bB\b\1\2=\b\v\a=\a\a\0065\a\14\0003\b\r\0=\b\15\a=\a\16\0065\a\20\0009\b\17\0039\n\17\0039\n\18\n)\f¸ˇB\n\2\0025\v\19\0B\b\3\2=\b\21\a9\b\17\0039\n\17\0039\n\18\n)\f\4\0B\n\2\0025\v\22\0B\b\3\2=\b\23\a9\b\17\0039\n\17\0039\n\24\nB\n\1\0025\v\25\0B\b\3\2=\b\26\a9\b\17\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\17\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\17\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\17\0069\a\6\0039\a'\a4\t\3\0005\n(\0>\n\1\t5\n)\0>\n\2\t4\n\3\0005\v*\0>\v\1\nB\a\3\2=\a'\0065\a/\0009\b+\0005\n,\0003\v-\0=\v.\nB\b\2\2=\b0\a=\a1\6B\4\2\0019\4\5\0039\0042\4'\0063\0005\a5\0004\b\3\0005\t4\0>\t\1\b=\b'\aB\4\3\0019\4\5\0039\0042\4'\0066\0005\a8\0009\b\17\0039\b7\b9\b2\bB\b\1\2=\b\17\a9\b\6\0039\b'\b4\n\3\0005\v9\0>\v\1\n4\v\3\0005\f:\0>\f\1\vB\b\3\2=\b'\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\nsetup\bcmp\fluasnip\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÌ\a\0\2\t\0*\0ï\0015\2\0\0=\1\1\0029\3\2\0+\4\1\0=\4\3\0039\3\2\0+\4\1\0=\4\4\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\r\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\b\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\16\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\15\0036\3\5\0009\3\17\0039\3\18\3\18\5\1\0'\6\19\0'\a\20\0B\3\4\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\24\0006\a\5\0009\a\6\a9\a\25\a9\a\26\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\27\0006\a\5\0009\a\6\a9\a\25\a9\a\28\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\29\0006\a\5\0009\a\6\a9\a\25\a9\a\n\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\30\0006\a\5\0009\a\6\a9\a\25\a9\a\31\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6 \0006\a\5\0009\a\6\a9\a\25\a9\a!\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\"\0006\a\5\0009\a\6\a9\a\25\a9\a#\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6$\0006\a\5\0009\a\6\a9\a\25\a9\a%\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6&\0006\a\5\0009\a\6\a9\a\25\a9\a'\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6(\0006\a\5\0009\a\6\a9\a\25\a9\a)\a\18\b\2\0B\3\5\1K\0\1\0\16code_action\15<leader>ca\15references\agr\vrename\15<leader>rn\20type_definition\14<leader>D\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\agD\6n\bset\vkeymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities\vbuffer\1\0\0¶\a\1\0\14\0/\0l6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0016\0\r\0'\2\14\0B\0\2\0023\1\15\0006\2\0\0009\2\16\0029\2\17\0029\2\18\2B\2\1\0026\3\r\0'\5\19\0B\3\2\0029\3\20\3\18\5\2\0B\3\2\2\18\2\3\0005\3\21\0006\4\22\0\18\6\3\0B\4\2\4H\a\tÄ6\t\r\0'\v\14\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\1\25\v=\2\26\vB\t\2\1F\a\3\3R\aı6\4\0\0009\4\5\0049\4\27\0045\6!\0005\a\28\0006\b\0\0009\b\29\b9\b\30\b9\b\31\b=\b \a=\a\"\0065\a#\0006\b\0\0009\b\29\b9\b\30\b=\b$\a=\a%\6B\4\2\0016\4\22\0006\6\0\0009\6\29\0069\6&\0069\6'\6B\4\2\4H\a\fÄ'\t(\0\18\n\a\0&\t\n\t6\n\0\0009\n)\n9\n*\n\18\f\t\0005\r+\0=\b,\r=\t-\r=\t.\rB\n\3\1F\a\3\3R\aÚK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\nfloat\vborder\1\0\5\14focusable\1\vprefix\5\vsource\valways\vheader\5\nstyle\fminimal\17virtual_text\1\0\4\21update_in_insert\2\14underline\2\nsigns\2\18severity_sort\1\vprefix\tHint\14my_border\6g\1\0\1\vsource\valways\vconfig\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0\14lspconfig\frequire\15setloclist\14<leader>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\14<leader>e\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'modes.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
