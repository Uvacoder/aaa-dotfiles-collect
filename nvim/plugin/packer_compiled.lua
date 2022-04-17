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
    config = { "\27LJ\2\n�\3\0\0\a\0\20\0&6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\0015\0\n\0006\1\6\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\6\0009\1\v\0019\1\f\1'\3\16\0'\4\14\0'\5\17\0\18\6\0\0B\1\5\0016\1\6\0009\1\v\0019\1\f\1'\3\16\0'\4\18\0'\5\19\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\1\0\2\vsilent\2\fnoremap\2\vborder\14my_border\6g\bvim\15dimensions\1\0\0\1\0\2\vheight\4����\t����\3\nwidth\4����\t����\3\nsetup\nFTerm\frequire\0" },
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
    config = { "\27LJ\2\n�\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3�\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n�\f\0\0\b\0U\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\17globalstatus\2\25always_divide_middle\1\18icons_enabled\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\a\0006\4\3\0009\4\4\0049\4\5\0049\4\6\4=\4\b\0036\4\3\0009\4\4\0049\4\5\0049\4\t\4=\4\n\0036\4\3\0009\4\4\0049\4\5\0049\4\v\4=\4\f\0036\4\3\0009\4\4\0049\4\5\0049\4\r\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\vcolors\1\0\3\15set_cursor\2\17line_opacity\4����\t����\3\15focus_only\1\vvisual\vpurple\vinsert\tblue\vdelete\bred\tcopy\1\0\0\vyellow\14my_colors\6g\bvim\nsetup\nmodes\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequire�\r\1\0\6\0001\0D6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\3\0003\5\4\0=\5\5\4>\4\1\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\15\0006\5\v\0009\5\f\0059\5\r\0059\5\14\5=\5\16\4=\4\14\0035\4\17\0=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0024\3\0\0=\3\28\0025\3\"\0005\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\0035\4%\0005\5$\0=\5\26\4=\4\27\3=\3&\0025\3'\0005\4)\0005\5(\0=\5\26\4=\4\27\3=\3*\0025\3-\0005\4+\0005\5,\0=\5\26\4=\4\27\3=\3\22\2B\0\2\0016\0\v\0009\0.\0'\2/\0B\0\2\0016\0\v\0009\0.\0'\0020\0B\0\2\1K\0\1\0$nnoremap . :Neotree buffers<cr>#nnoremap , :Neotree toggle<cr>\bcmd\1\0\0\1\0\a\agc\15git_commit\6A\16git_add_all\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6f\21filter_on_submit\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\6/\17fuzzy_finder\n<c-x>\17clear_filter\19filtered_items\1\0\3\24follow_current_file\2\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6S\15open_split\t<cr>\topen\6x\21cut_to_clipboard\6r\vrename\6a\badd\6d\vdelete\6p\25paste_from_clipboard\6c\tcopy\6q\17close_window\6y\22copy_to_clipboard\6t\16open_tabnew\6m\tmove\6C\15close_node\6R\frefresh\6A\18add_directory\6s\16open_vsplit\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\frenamed\b\rmodified\b\nadded\b✚\fdeleted\b✖\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\bvim\ticon\1\0\0\1\0\4\16folder_open\b\17folder_empty\bﰊ\18folder_closed\b\fdefault\b\19event_handlers\1\0\4\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\0" },
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
    config = { "\27LJ\2\n�\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4�6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0�\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilities�\1\1\0\a\0\15\0\0246\0\0\0009\0\1\0009\0\2\0009\0\3\0+\2\0\0)\3�\aB\0\3\0016\0\4\0'\2\5\0B\0\2\0029\1\6\0009\1\a\0019\2\b\0005\4\v\0004\5\3\0009\6\t\1>\6\1\0059\6\n\1>\6\2\5=\5\f\0043\5\r\0=\5\14\4B\2\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\vstylua\rprettier\nsetup\15formatting\rbuiltins\fnull-ls\frequire\20formatting_sync\bbuf\blsp\bvim\0" },
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
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\1�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0�\a\1\0\r\0<\0{6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a0\0009\b,\0005\n-\0003\v.\0=\v/\nB\b\2\2=\b1\a=\a2\6B\4\2\0019\4\5\0039\0043\4'\0064\0005\a6\0004\b\3\0005\t5\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0043\4'\0067\0005\a9\0009\b\v\0039\b8\b9\b3\bB\b\1\2=\b\v\a9\b'\0039\b(\b4\n\3\0005\v:\0>\v\1\n4\v\3\0005\f;\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\0\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nV\0\0\4\0\5\0\t6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim�\t\1\2\t\0000\0�\0015\2\0\0=\1\1\0029\3\2\0+\4\1\0=\4\3\0039\3\2\0+\4\1\0=\4\4\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\r\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\b\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\16\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\15\0036\3\5\0009\3\17\0039\3\18\3\18\5\1\0'\6\19\0'\a\20\0B\3\4\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\24\0006\a\5\0009\a\6\a9\a\25\a9\a\26\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\27\0006\a\5\0009\a\6\a9\a\25\a9\a\28\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\29\0006\a\5\0009\a\6\a9\a\25\a9\a\n\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\30\0006\a\5\0009\a\6\a9\a\25\a9\a\31\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6 \0006\a\5\0009\a\6\a9\a\25\a9\a!\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\"\0006\a\5\0009\a\6\a9\a\25\a9\a#\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6$\0006\a\5\0009\a\6\a9\a\25\a9\a%\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6&\0003\a'\0\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6(\0006\a\5\0009\a\6\a9\a\25\a9\a)\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6*\0006\a\5\0009\a\6\a9\a\25\a9\a+\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6,\0006\a\5\0009\a\6\a9\a\25\a9\a-\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6.\0006\a\5\0009\a\6\a9\a\25\a9\a/\a\18\b\2\0B\3\5\1K\0\1\0\16code_action\15<leader>ca\15references\agr\vrename\15<leader>rn\20type_definition\14<leader>D\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\agD\6n\bset\vkeymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities\vbuffer\1\0\0�\6\1\0\14\0)\0a6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0016\0\r\0'\2\14\0B\0\2\0023\1\15\0006\2\0\0009\2\16\0029\2\17\0029\2\18\2B\2\1\0026\3\r\0'\5\19\0B\3\2\0029\3\20\3\18\5\2\0B\3\2\2\18\2\3\0005\3\21\0006\4\22\0\18\6\3\0B\4\2\4H\a\t�6\t\r\0'\v\14\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\1\25\v=\2\26\vB\t\2\1F\a\3\3R\a�6\4\0\0009\4\5\0049\4\27\0045\6\29\0005\a\28\0=\a\30\6B\4\2\0016\4\22\0006\6\0\0009\6\31\0069\6 \0069\6!\6B\4\2\4H\a\f�'\t\"\0\18\n\a\0&\t\n\t6\n\0\0009\n#\n9\n$\n\18\f\t\0005\r%\0=\b&\r=\t'\r=\t(\rB\n\3\1F\a\3\3R\a�K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\18severity_sort\1\21update_in_insert\2\nsigns\2\14underline\2\1\0\2\vsource\valways\vprefix\6x\vconfig\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0\14lspconfig\frequire\15setloclist\14<leader>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\14<leader>e\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nV\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0026\1\4\0=\0\1\1K\0\1\0\bvim\1\0\1\vrender\fminimal\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire�\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21code_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["rose-pine"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0&\0O6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0006\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\t\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\v\0036\4\4\0009\4\5\0049\4\6\0049\4\f\4=\4\r\0036\4\4\0009\4\5\0049\4\14\0049\4\15\4=\4\16\0036\4\4\0009\4\5\0049\4\14\0049\4\17\4=\4\18\0036\4\4\0009\4\5\0049\4\14\0049\4\19\4=\4\20\0036\4\4\0009\4\5\0049\4\14\0049\4\21\4=\4\22\0036\4\4\0009\4\5\0049\4\14\0049\4\23\4=\4\24\0036\4\4\0009\4\5\0049\4\14\0049\4\17\4=\4\25\0036\4\4\0009\4\5\0049\4\14\0049\4\15\4=\4\26\3=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2B\0\2\0016\0\4\0009\0 \0'\2!\0B\0\2\0016\0\4\0009\0\"\0009\0#\0)\2\0\0'\3$\0005\4%\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\f\4B\0\4\1K\0\1\0\1\0\0\24IndentBlanklineChar\16nvim_set_hl\bapi\26colorscheme rose-pine\bcmd\21highlight_groups\16ColorColumn\1\0\0\1\0\1\abg\trose\vgroups\15git_delete\15git_change\fgit_add\ngreen\thint\nwhite\tinfo\tblue\twarn\vyellow\nerror\bred\14my_colors\vborder\afg\npanel\vbg_alt\15background\1\0\1\fcomment\nmuted\abg\17my_ui_colors\6g\bvim\1\0\6\22dim_nc_background\1\20bold_vert_split\1\17dark_variant\tmain\20disable_italics\1\29disable_float_background\1\23disable_background\1\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\a\0\20\0&6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\0015\0\n\0006\1\6\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\6\0009\1\v\0019\1\f\1'\3\16\0'\4\14\0'\5\17\0\18\6\0\0B\1\5\0016\1\6\0009\1\v\0019\1\f\1'\3\16\0'\4\18\0'\5\19\0\18\6\0\0B\1\5\1K\0\1\0\15<C-\\><C-n>\n<esc>5<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\6;\6n\bset\vkeymap\1\0\2\vsilent\2\fnoremap\2\vborder\14my_border\6g\bvim\15dimensions\1\0\0\1\0\2\vheight\4����\t����\3\nwidth\4����\t����\3\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0026\1\4\0=\0\1\1K\0\1\0\bvim\1\0\1\vrender\fminimal\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire�\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21code_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\t\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\16\0\0316\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\0\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3�\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\14close_all\rneo-tree\frequire�\r\1\0\6\0001\0D6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\3\0003\5\4\0=\5\5\4>\4\1\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\15\0006\5\v\0009\5\f\0059\5\r\0059\5\14\5=\5\16\4=\4\14\0035\4\17\0=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0024\3\0\0=\3\28\0025\3\"\0005\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\0035\4%\0005\5$\0=\5\26\4=\4\27\3=\3&\0025\3'\0005\4)\0005\5(\0=\5\26\4=\4\27\3=\3*\0025\3-\0005\4+\0005\5,\0=\5\26\4=\4\27\3=\3\22\2B\0\2\0016\0\v\0009\0.\0'\2/\0B\0\2\0016\0\v\0009\0.\0'\0020\0B\0\2\1K\0\1\0$nnoremap . :Neotree buffers<cr>#nnoremap , :Neotree toggle<cr>\bcmd\1\0\0\1\0\a\agc\15git_commit\6A\16git_add_all\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6f\21filter_on_submit\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\6/\17fuzzy_finder\n<c-x>\17clear_filter\19filtered_items\1\0\3\24follow_current_file\2\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\15never_show\1\5\0\0\14.DS_Store\14thumbs.db\vplugin\24packer_compiled.lua\17hide_by_name\1\t\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\1\0\16\6S\15open_split\t<cr>\topen\6x\21cut_to_clipboard\6r\vrename\6a\badd\6d\vdelete\6p\25paste_from_clipboard\6c\tcopy\6q\17close_window\6y\22copy_to_clipboard\6t\16open_tabnew\6m\tmove\6C\15close_node\6R\frefresh\6A\18add_directory\6s\16open_vsplit\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\4\frenamed\b\rmodified\b\nadded\b✚\fdeleted\b✖\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\vsymbol\1\0\1\14highlight\20NeoTreeModified\rmodified\rmy_icons\6g\bvim\ticon\1\0\0\1\0\4\16folder_open\b\17folder_empty\bﰊ\18folder_closed\b\fdefault\b\19event_handlers\1\0\4\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\b\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\a\5=\5\t\4=\4\a\0035\4\f\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\v\5=\5\t\4=\4\v\0035\4\14\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\r\0035\4\15\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\16\0035\4\17\0006\5\3\0009\5\4\0059\5\5\0059\5\6\0059\5\r\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\0\14topdelete\1\0\0\1\0\0\vdelete\1\0\0\vchange\1\0\0\ttext\1\0\0\badd\tdiff\rmy_icons\6g\bvim\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\1�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0�\a\1\0\r\0<\0{6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a0\0009\b,\0005\n-\0003\v.\0=\v/\nB\b\2\2=\b1\a=\a2\6B\4\2\0019\4\5\0039\0043\4'\0064\0005\a6\0004\b\3\0005\t5\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0043\4'\0067\0005\a9\0009\b\v\0039\b8\b9\b3\bB\b\1\2=\b\v\a9\b'\0039\b(\b4\n\3\0005\v:\0>\v\1\n4\v\3\0005\f;\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0&\0O6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0006\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\t\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\v\0036\4\4\0009\4\5\0049\4\6\0049\4\f\4=\4\r\0036\4\4\0009\4\5\0049\4\14\0049\4\15\4=\4\16\0036\4\4\0009\4\5\0049\4\14\0049\4\17\4=\4\18\0036\4\4\0009\4\5\0049\4\14\0049\4\19\4=\4\20\0036\4\4\0009\4\5\0049\4\14\0049\4\21\4=\4\22\0036\4\4\0009\4\5\0049\4\14\0049\4\23\4=\4\24\0036\4\4\0009\4\5\0049\4\14\0049\4\17\4=\4\25\0036\4\4\0009\4\5\0049\4\14\0049\4\15\4=\4\26\3=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2B\0\2\0016\0\4\0009\0 \0'\2!\0B\0\2\0016\0\4\0009\0\"\0009\0#\0)\2\0\0'\3$\0005\4%\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\f\4B\0\4\1K\0\1\0\1\0\0\24IndentBlanklineChar\16nvim_set_hl\bapi\26colorscheme rose-pine\bcmd\21highlight_groups\16ColorColumn\1\0\0\1\0\1\abg\trose\vgroups\15git_delete\15git_change\fgit_add\ngreen\thint\nwhite\tinfo\tblue\twarn\vyellow\nerror\bred\14my_colors\vborder\afg\npanel\vbg_alt\15background\1\0\1\fcomment\nmuted\abg\17my_ui_colors\6g\bvim\1\0\6\22dim_nc_background\1\20bold_vert_split\1\17dark_variant\tmain\20disable_italics\1\29disable_float_background\1\23disable_background\1\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nV\0\0\4\0\5\0\t6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim�\t\1\2\t\0000\0�\0015\2\0\0=\1\1\0029\3\2\0+\4\1\0=\4\3\0039\3\2\0+\4\1\0=\4\4\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\r\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\b\0036\3\5\0009\3\6\0039\3\a\0036\4\5\0009\4\6\0049\4\t\0046\6\5\0009\6\6\0069\6\a\0069\6\n\0065\a\16\0006\b\5\0009\b\v\b9\b\f\b=\b\14\aB\4\3\2=\4\15\0036\3\5\0009\3\17\0039\3\18\3\18\5\1\0'\6\19\0'\a\20\0B\3\4\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\24\0006\a\5\0009\a\6\a9\a\25\a9\a\26\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\27\0006\a\5\0009\a\6\a9\a\25\a9\a\28\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\29\0006\a\5\0009\a\6\a9\a\25\a9\a\n\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\30\0006\a\5\0009\a\6\a9\a\25\a9\a\31\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6 \0006\a\5\0009\a\6\a9\a\25\a9\a!\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6\"\0006\a\5\0009\a\6\a9\a\25\a9\a#\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6$\0006\a\5\0009\a\6\a9\a\25\a9\a%\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6&\0003\a'\0\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6(\0006\a\5\0009\a\6\a9\a\25\a9\a)\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6*\0006\a\5\0009\a\6\a9\a\25\a9\a+\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6,\0006\a\5\0009\a\6\a9\a\25\a9\a-\a\18\b\2\0B\3\5\0016\3\5\0009\3\21\0039\3\22\3'\5\23\0'\6.\0006\a\5\0009\a\6\a9\a\25\a9\a/\a\18\b\2\0B\3\5\1K\0\1\0\16code_action\15<leader>ca\15references\agr\vrename\15<leader>rn\20type_definition\14<leader>D\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\agD\6n\bset\vkeymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\1\0\0\31textDocument/signatureHelp\vborder\1\0\0\14my_border\6g\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\30document_range_formatting\24document_formatting\26resolved_capabilities\vbuffer\1\0\0�\6\1\0\14\0)\0a6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0016\0\r\0'\2\14\0B\0\2\0023\1\15\0006\2\0\0009\2\16\0029\2\17\0029\2\18\2B\2\1\0026\3\r\0'\5\19\0B\3\2\0029\3\20\3\18\5\2\0B\3\2\2\18\2\3\0005\3\21\0006\4\22\0\18\6\3\0B\4\2\4H\a\t�6\t\r\0'\v\14\0B\t\2\0028\t\b\t9\t\23\t5\v\24\0=\1\25\v=\2\26\vB\t\2\1F\a\3\3R\a�6\4\0\0009\4\5\0049\4\27\0045\6\29\0005\a\28\0=\a\30\6B\4\2\0016\4\22\0006\6\0\0009\6\31\0069\6 \0069\6!\6B\4\2\4H\a\f�'\t\"\0\18\n\a\0&\t\n\t6\n\0\0009\n#\n9\n$\n\18\f\t\0005\r%\0=\b&\r=\t'\r=\t(\rB\n\3\1F\a\3\3R\a�K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\18severity_sort\1\21update_in_insert\2\nsigns\2\14underline\2\1\0\2\vsource\valways\vprefix\6x\vconfig\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0\14lspconfig\frequire\15setloclist\14<leader>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\14<leader>e\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\f\0\0\b\0U\0�\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2(\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\4=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0034\4\0\0=\4'\3=\3)\0025\3+\0005\4*\0006\5\4\0009\5\5\0059\5\6\0059\5\22\5=\5\t\4=\4,\0035\4-\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\4.\0035\4/\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0040\3=\0031\0025\0033\0005\0042\0006\5\4\0009\5\5\0059\5\6\0059\5\30\5=\5\t\4=\0044\0035\0045\0006\5\4\0009\5\5\0059\5\6\0059\5\26\5=\5\t\4=\0046\0035\0047\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\t\4=\0048\0035\0049\0006\5\4\0009\5\5\0059\5\6\0059\5\15\5=\5\t\4=\4:\3=\3;\0025\3=\0005\4<\0=\4>\0035\4?\0=\4@\0035\4E\0005\5A\0005\6C\0006\a\4\0009\a\5\a9\aB\a9\a.\a=\a.\6=\6D\5>\5\1\4=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\3=\3M\0025\3N\0004\4\0\0=\4>\0034\4\0\0=\4@\0035\4O\0=\4F\0035\4P\0=\4H\0034\4\0\0=\4J\0034\4\0\0=\4L\3=\3Q\0024\3\0\0=\3R\0025\3S\0=\3T\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vyellow\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\17globalstatus\2\25always_divide_middle\1\18icons_enabled\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4�6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0�\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilities�\1\1\0\a\0\15\0\0246\0\0\0009\0\1\0009\0\2\0009\0\3\0+\2\0\0)\3�\aB\0\3\0016\0\4\0'\2\5\0B\0\2\0029\1\6\0009\1\a\0019\2\b\0005\4\v\0004\5\3\0009\6\t\1>\6\1\0059\6\n\1>\6\2\5=\5\f\0043\5\r\0=\5\14\4B\2\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\vstylua\rprettier\nsetup\15formatting\rbuiltins\fnull-ls\frequire\20formatting_sync\bbuf\blsp\bvim\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
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
