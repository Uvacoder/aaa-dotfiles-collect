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
    config = { "\27LJ\2\n¯\2\0\0\a\0\17\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\r\0'\4\v\0'\5\14\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\r\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\15dimensions\1\0\1\ahl\16FloatBorder\1\0\2\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\nFTerm\frequire\0" },
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
    config = { "\27LJ\2\nÓ\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  everforest = {
    config = { "\27LJ\2\nó\a\0\0\6\0'\0y6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\t\0006\0\0\0009\0\n\0'\2\v\0B\0\2\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\14\0005\4\17\0006\5\0\0009\5\1\0059\5\15\0059\5\16\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\19\0005\4\21\0006\5\0\0009\5\1\0059\5\15\0059\5\20\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\22\0005\4\24\0006\5\0\0009\5\1\0059\5\15\0059\5\23\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\25\0005\4\27\0006\5\0\0009\5\1\0059\5\15\0059\5\26\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\28\0005\4\30\0006\5\0\0009\5\1\0059\5\15\0059\5\29\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\31\0005\4 \0006\5\0\0009\5\1\0059\5\15\0059\5\20\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3!\0005\4\"\0006\5\0\0009\5\1\0059\5\15\0059\5\23\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3#\0005\4&\0006\5\0\0009\5\1\0059\5$\0059\5%\5=\5\18\4B\0\4\1K\0\1\0\1\0\0\abg\17my_ui_colors\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\nwhite\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\16GitSignsAdd\16nvim_set_hl\bapi\27colorscheme everforest\bcmd&everforest_transparent_background\nhight\27everforest_ui_contrast\tnone&everforest_sign_column_background\"everforest_better_performance\thard\26everforest_background\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nø\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\në\f\0\0\b\0U\0ø\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\18icons_enabled\1\17globalstatus\2\25always_divide_middle\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\nç\2\0\0\5\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\a\0006\4\3\0009\4\4\0049\4\5\0049\4\6\4=\4\b\0036\4\3\0009\4\4\0049\4\5\0049\4\t\4=\4\n\0036\4\3\0009\4\4\0049\4\5\0049\4\v\4=\4\f\0036\4\3\0009\4\4\0049\4\5\0049\4\r\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\vcolors\1\0\3\17line_opacity\4ö≥ÊÃ\tô≥Ê˛\3\15set_cursor\2\15focus_only\1\vvisual\vpurple\vinsert\tblue\vdelete\bred\tcopy\1\0\0\vyellow\14my_colors\6g\bvim\nsetup\nmodes\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequireË\r\1\0\6\0002\0H6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0004\3\3\0005\4\6\0003\5\a\0=\5\b\4>\4\1\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\17\0006\5\0\0009\5\14\0059\5\15\0059\5\16\5=\5\18\4=\4\16\0035\4\19\0=\4\20\0035\4\22\0005\5\21\0=\5\23\4=\4\24\3=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0025\3$\0005\4\31\0005\5 \0=\5!\0045\5\"\0=\5#\4=\4%\0035\4'\0005\5&\0=\5\28\4=\4\29\3=\3(\0025\3)\0005\4+\0005\5*\0=\5\28\4=\4\29\3=\3,\0025\3/\0005\4-\0005\5.\0=\5\28\4=\4\29\3=\3\24\2B\0\2\0016\0\0\0009\0\1\0'\0020\0B\0\2\0016\0\0\0009\0\1\0'\0021\0B\0\2\1K\0\1\0$nnoremap . :Neotree buffers<cr>#nnoremap , :Neotree toggle<cr>\1\0\0\1\0\a\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\t<bs>\16navigate_up\6f\21filter_on_submit\6.\rset_root\6/\17fuzzy_finder\n<c-x>\17clear_filter\6H\18toggle_hidden\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6p\25paste_from_clipboard\6x\21cut_to_clipboard\6C\15close_node\6r\vrename\6d\vdelete\6s\16open_vsplit\6S\15open_split\t<cr>\topen\6c\tcopy\6t\16open_tabnew\6q\17close_window\6m\tmove\6R\frefresh\6A\18add_directory\6a\badd\6y\22copy_to_clipboard\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\nadded\b‚úö\fdeleted\b‚úñ\frenamed\bÔïî\rmodified\bÔëÑ\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\ticon\1\0\0\1\0\4\18folder_closed\bÔÅî\17folder_empty\bÔ∞ä\16folder_open\bÔÅ∏\fdefault\bÓòí\19event_handlers\1\0\4\23popup_border_style\frounded\25close_if_last_window\2\23enable_diagnostics\1\22enable_git_status\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesõ\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\4\0005\4\a\0004\5\3\0009\6\5\1>\6\1\0059\6\6\1>\6\2\5=\5\b\0043\5\t\0=\5\n\4B\2\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\vstylua\rprettier\nsetup\15formatting\rbuiltins\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0◊\b\1\0\r\0F\0Ñ\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\0016\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0029\4\n\0035\6\14\0005\a\f\0003\b\v\0=\b\r\a=\a\15\0065\a\18\0009\b\16\0039\b\17\bB\b\1\2=\b\19\a9\b\16\0039\b\20\bB\b\1\2=\b\21\a9\b\16\0039\n\16\0039\n\22\n)\f¸ˇB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\16\0039\n\16\0039\n\22\n)\f\4\0B\n\2\0025\v\25\0B\b\3\2=\b\26\a9\b\16\0039\n\16\0039\n\27\nB\n\1\0025\v\28\0B\b\3\2=\b\29\a9\b\16\0039\b\30\bB\b\1\2=\b\31\a9\b\16\0039\b \b5\n#\0009\v!\0039\v\"\v=\v$\nB\b\2\2=\b%\a9\b\16\0033\n&\0005\v'\0B\b\3\2=\b(\a9\b\16\0033\n)\0005\v*\0B\b\3\2=\b+\a=\a\16\0065\a/\0006\b,\0009\b-\b9\b.\b=\b0\a=\a1\0069\a2\0039\a3\a4\t\3\0005\n4\0>\n\1\t5\n5\0>\n\2\t4\n\3\0005\v6\0>\v\1\nB\a\3\2=\a3\0065\a;\0009\b7\0005\n8\0003\v9\0=\v:\nB\b\2\2=\b<\a=\a=\6B\4\2\0019\4\n\0039\4>\4'\6?\0005\aA\0004\b\3\0005\t@\0>\t\1\b=\b3\aB\4\3\0019\4\n\0039\4>\4'\6B\0005\aE\0009\b2\0039\b3\b4\n\3\0005\vC\0>\v\1\n4\v\3\0005\fD\0>\f\1\vB\b\3\2=\b3\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\18documentation\vborder\1\0\0\14my_border\6g\bvim\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\npaths\1\0\0\1\2\0\0\19./lua/snippets\tload\"luasnip.loaders.from_snipmate\0\flspkind\frequire\0" },
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
    config = { "\27LJ\2\n√\v\0\2\t\1-\0ú\0019\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\0026\3\3\0009\3\4\0039\3\a\0036\5\3\0009\5\4\0059\5\5\0059\5\b\0055\6\v\0006\a\3\0009\a\t\a9\a\n\a=\a\f\6B\3\3\2=\3\6\0026\2\3\0009\2\4\0029\2\5\0026\3\3\0009\3\4\0039\3\a\0036\5\3\0009\5\4\0059\5\5\0059\5\b\0055\6\14\0006\a\3\0009\a\t\a9\a\n\a=\a\f\6B\3\3\2=\3\r\0026\2\3\0009\2\15\0029\2\16\2\18\4\1\0'\5\17\0'\6\18\0B\2\4\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\21\0'\a\22\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\23\0'\a\24\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\25\0'\a\26\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\27\0'\a\28\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\29\0'\a\30\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\31\0'\a \0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6!\0'\a\"\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6#\0'\a$\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6%\0'\a&\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6'\0'\a(\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6)\0'\a*\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6+\0'\a,\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities±\a\1\0\15\0*\0_6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\30\0005\b\29\0=\b\31\aB\5\2\0016\5\22\0006\a\3\0009\a \a9\a!\a9\a\"\aB\5\2\4H\b\fÄ'\n#\0\18\v\b\0&\n\v\n6\v\3\0009\v$\v9\v%\v\18\r\n\0005\14&\0=\t'\14=\n(\14=\n)\14B\v\3\1F\b\3\3R\bÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\14underline\2\nsigns\2\18severity_sort\1\21update_in_insert\2\1\0\2\vsource\valways\vprefix\6x\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireï\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21code_incremental\bgrn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0" },
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
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequireË\r\1\0\6\0002\0H6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0004\3\3\0005\4\6\0003\5\a\0=\5\b\4>\4\1\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\17\0006\5\0\0009\5\14\0059\5\15\0059\5\16\5=\5\18\4=\4\16\0035\4\19\0=\4\20\0035\4\22\0005\5\21\0=\5\23\4=\4\24\3=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0025\3$\0005\4\31\0005\5 \0=\5!\0045\5\"\0=\5#\4=\4%\0035\4'\0005\5&\0=\5\28\4=\4\29\3=\3(\0025\3)\0005\4+\0005\5*\0=\5\28\4=\4\29\3=\3,\0025\3/\0005\4-\0005\5.\0=\5\28\4=\4\29\3=\3\24\2B\0\2\0016\0\0\0009\0\1\0'\0020\0B\0\2\0016\0\0\0009\0\1\0'\0021\0B\0\2\1K\0\1\0$nnoremap . :Neotree buffers<cr>#nnoremap , :Neotree toggle<cr>\1\0\0\1\0\a\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\t<bs>\16navigate_up\6f\21filter_on_submit\6.\rset_root\6/\17fuzzy_finder\n<c-x>\17clear_filter\6H\18toggle_hidden\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6p\25paste_from_clipboard\6x\21cut_to_clipboard\6C\15close_node\6r\vrename\6d\vdelete\6s\16open_vsplit\6S\15open_split\t<cr>\topen\6c\tcopy\6t\16open_tabnew\6q\17close_window\6m\tmove\6R\frefresh\6A\18add_directory\6a\badd\6y\22copy_to_clipboard\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\nadded\b‚úö\fdeleted\b‚úñ\frenamed\bÔïî\rmodified\bÔëÑ\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\ticon\1\0\0\1\0\4\18folder_closed\bÔÅî\17folder_empty\bÔ∞ä\16folder_open\bÔÅ∏\fdefault\bÓòí\19event_handlers\1\0\4\23popup_border_style\frounded\25close_if_last_window\2\23enable_diagnostics\1\22enable_git_status\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n¯\2\0\0\a\0\17\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\r\0'\4\v\0'\5\14\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\r\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\15dimensions\1\0\1\ahl\16FloatBorder\1\0\2\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\në\f\0\0\b\0U\0ø\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\18icons_enabled\1\17globalstatus\2\25always_divide_middle\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\nÓ\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0◊\b\1\0\r\0F\0Ñ\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\0016\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0029\4\n\0035\6\14\0005\a\f\0003\b\v\0=\b\r\a=\a\15\0065\a\18\0009\b\16\0039\b\17\bB\b\1\2=\b\19\a9\b\16\0039\b\20\bB\b\1\2=\b\21\a9\b\16\0039\n\16\0039\n\22\n)\f¸ˇB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\16\0039\n\16\0039\n\22\n)\f\4\0B\n\2\0025\v\25\0B\b\3\2=\b\26\a9\b\16\0039\n\16\0039\n\27\nB\n\1\0025\v\28\0B\b\3\2=\b\29\a9\b\16\0039\b\30\bB\b\1\2=\b\31\a9\b\16\0039\b \b5\n#\0009\v!\0039\v\"\v=\v$\nB\b\2\2=\b%\a9\b\16\0033\n&\0005\v'\0B\b\3\2=\b(\a9\b\16\0033\n)\0005\v*\0B\b\3\2=\b+\a=\a\16\0065\a/\0006\b,\0009\b-\b9\b.\b=\b0\a=\a1\0069\a2\0039\a3\a4\t\3\0005\n4\0>\n\1\t5\n5\0>\n\2\t4\n\3\0005\v6\0>\v\1\nB\a\3\2=\a3\0065\a;\0009\b7\0005\n8\0003\v9\0=\v:\nB\b\2\2=\b<\a=\a=\6B\4\2\0019\4\n\0039\4>\4'\6?\0005\aA\0004\b\3\0005\t@\0>\t\1\b=\b3\aB\4\3\0019\4\n\0039\4>\4'\6B\0005\aE\0009\b2\0039\b3\b4\n\3\0005\vC\0>\v\1\n4\v\3\0005\fD\0>\f\1\vB\b\3\2=\b3\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\18documentation\vborder\1\0\0\14my_border\6g\bvim\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\npaths\1\0\0\1\2\0\0\19./lua/snippets\tload\"luasnip.loaders.from_snipmate\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n√\v\0\2\t\1-\0ú\0019\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\0026\3\3\0009\3\4\0039\3\a\0036\5\3\0009\5\4\0059\5\5\0059\5\b\0055\6\v\0006\a\3\0009\a\t\a9\a\n\a=\a\f\6B\3\3\2=\3\6\0026\2\3\0009\2\4\0029\2\5\0026\3\3\0009\3\4\0039\3\a\0036\5\3\0009\5\4\0059\5\5\0059\5\b\0055\6\14\0006\a\3\0009\a\t\a9\a\n\a=\a\f\6B\3\3\2=\3\r\0026\2\3\0009\2\15\0029\2\16\2\18\4\1\0'\5\17\0'\6\18\0B\2\4\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\21\0'\a\22\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\23\0'\a\24\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\25\0'\a\26\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\27\0'\a\28\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\29\0'\a\30\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6\31\0'\a \0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6!\0'\a\"\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6#\0'\a$\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6%\0'\a&\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6'\0'\a(\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6)\0'\a*\0-\b\0\0B\2\6\0016\2\3\0009\2\15\0029\2\19\2\18\4\1\0'\5\20\0'\6+\0'\a,\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities±\a\1\0\15\0*\0_6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\30\0005\b\29\0=\b\31\aB\5\2\0016\5\22\0006\a\3\0009\a \a9\a!\a9\a\"\aB\5\2\4H\b\fÄ'\n#\0\18\v\b\0&\n\v\n6\v\3\0009\v$\v9\v%\v\18\r\n\0005\14&\0=\t'\14=\n(\14=\n)\14B\v\3\1F\b\3\3R\bÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\14underline\2\nsigns\2\18severity_sort\1\21update_in_insert\2\1\0\2\vsource\valways\vprefix\6x\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesõ\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0019\2\4\0005\4\a\0004\5\3\0009\6\5\1>\6\1\0059\6\6\1>\6\2\5=\5\b\0043\5\t\0=\5\n\4B\2\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\vstylua\rprettier\nsetup\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nø\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: everforest
time([[Config for everforest]], true)
try_loadstring("\27LJ\2\nó\a\0\0\6\0'\0y6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\t\0006\0\0\0009\0\n\0'\2\v\0B\0\2\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\14\0005\4\17\0006\5\0\0009\5\1\0059\5\15\0059\5\16\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\19\0005\4\21\0006\5\0\0009\5\1\0059\5\15\0059\5\20\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\22\0005\4\24\0006\5\0\0009\5\1\0059\5\15\0059\5\23\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\25\0005\4\27\0006\5\0\0009\5\1\0059\5\15\0059\5\26\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\28\0005\4\30\0006\5\0\0009\5\1\0059\5\15\0059\5\29\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3\31\0005\4 \0006\5\0\0009\5\1\0059\5\15\0059\5\20\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3!\0005\4\"\0006\5\0\0009\5\1\0059\5\15\0059\5\23\5=\5\18\4B\0\4\0016\0\0\0009\0\f\0009\0\r\0)\2\0\0'\3#\0005\4&\0006\5\0\0009\5\1\0059\5$\0059\5%\5=\5\18\4B\0\4\1K\0\1\0\1\0\0\abg\17my_ui_colors\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\nwhite\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\16GitSignsAdd\16nvim_set_hl\bapi\27colorscheme everforest\bcmd&everforest_transparent_background\nhight\27everforest_ui_contrast\tnone&everforest_sign_column_background\"everforest_better_performance\thard\26everforest_background\6g\bvim\0", "config", "everforest")
time([[Config for everforest]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireï\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21code_incremental\bgrn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
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
