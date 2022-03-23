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
    config = { "\27LJ\2\n \2\0\0\3\0\15\0\0276\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\0\0009\0\1\0005\1\r\0005\2\f\0=\2\14\1=\1\v\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n‚\4\0\0\6\0\20\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\18\0005\3\t\0005\4\3\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\b\4=\4\a\0035\4\n\0006\5\4\0009\5\5\0059\5\6\0059\5\v\5=\5\b\4=\4\v\0035\4\f\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\r\0035\4\14\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\15\0035\4\16\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\17\3=\3\19\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\3\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsDelete\14topdelete\1\0\3\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\3\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\3\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\1\0\0\ttext\badd\rmy_icons\6g\bvim\1\0\3\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nß\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0&indent_blankline_filetype_exclude\1\6\0\0\thelp\rstartify\vpacker\rNvimTree\vctrlsf%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\bÓò°\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\5¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\5¿\14lualine_x\rsections\vinsert\ntable?\0\0\4\1\5\0\t5\0\3\0-\1\0\0006\2\0\0009\2\1\0029\2\2\2B\2\1\0028\1\2\1=\1\4\0L\0\2\0\2¿\afg\1\0\0\tmode\afn\bvim\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31ù\16\1\0\14\0Ñ\1\0ç\0026\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0015\2\5\0009\3\4\1=\3\6\0029\3\a\0=\3\b\0029\3\t\0=\3\n\0029\3\t\0=\3\v\0029\3\t\0=\3\f\0029\3\r\0=\3\14\0029\3\4\1=\3\15\0029\3\16\0=\3\17\0029\3\16\0=\3\18\0029\3\16\0=\3\19\0029\3\20\0=\3\21\0029\3\22\0=\3\23\0029\3\22\0=\3\24\0029\3\r\0=\3\25\0029\3\r\0=\3\26\0029\3\22\0=\3\27\0029\3\22\0=\3\28\0029\3\29\0=\3\30\0029\3\4\1=\3\31\0029\3\29\0=\3 \0026\3!\0'\5\"\0B\3\2\0025\4$\0003\5#\0=\5%\0043\5&\0=\5'\0043\5(\0=\5)\0045\0055\0005\6*\0005\a/\0005\b.\0005\t+\0009\n\4\1=\n\4\t9\n,\1=\n-\t=\t\14\b=\b0\a5\b2\0005\t1\0009\n\4\1=\n\4\t9\n,\1=\n-\t=\t\14\b=\b3\a=\a4\6=\0066\0055\0067\0004\a\0\0=\a8\0064\a\0\0=\a9\0064\a\0\0=\a:\0064\a\0\0=\a;\0064\a\0\0=\a<\0064\a\0\0=\a=\6=\6>\0054\6\0\0=\6?\0055\6@\0=\6A\0053\6B\0003\aC\0\18\b\6\0005\nD\0003\vE\0=\vF\n5\vG\0=\vH\nB\b\2\1\18\b\6\0005\nI\0005\vJ\0=\vK\n5\vN\0006\f\0\0009\f\1\f9\fL\f9\fM\f=\fM\v6\f\0\0009\f\1\f9\fL\f9\fO\f=\fP\v6\f\0\0009\f\1\f9\fL\f9\fQ\f=\fQ\v6\f\0\0009\f\1\f9\fL\f9\fR\f=\fR\v=\vS\n5\vU\0005\fT\0009\r\22\0=\r\4\f=\fV\v5\fW\0009\r\20\0=\r\4\f=\fX\v5\fY\0009\r\t\0=\r\4\f=\fZ\v5\f[\0009\r\29\0=\r\4\f=\f\\\v=\v]\n5\v^\0=\vH\nB\b\2\1\18\b\6\0005\n_\0005\vb\0'\f`\0006\r\0\0009\r\1\r9\rL\r9\ra\r&\f\r\f=\fa\v=\vS\n9\v%\4=\vc\n5\vd\0=\vH\n5\ve\0009\f\29\0=\f\4\v=\vF\nB\b\2\1\18\b\6\0005\nf\0B\b\2\1\18\b\6\0005\ng\0005\vh\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\6\0004\n\3\0003\vi\0>\v\1\nB\b\2\1\18\b\6\0005\nj\0005\vk\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\6\0005\nn\0003\vl\0>\v\1\n5\vm\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\no\0005\vp\0=\vH\n5\vq\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\nr\0009\v'\4=\vc\n5\vs\0=\vH\n5\vt\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\nu\0005\vv\0=\vF\nB\b\2\1\18\b\a\0005\nw\0005\vy\0006\f\0\0009\f\1\f9\fL\f9\fx\f=\fz\v6\f\0\0009\f\1\f9\fL\f9\f{\f=\fa\v6\f\0\0009\f\1\f9\fL\f9\f|\f=\f}\v=\vS\n5\v\0005\f~\0009\r\a\0=\r\4\f=\fz\v5\fÄ\0009\r\20\0=\r\4\f=\fa\v5\fÅ\0009\r\22\0=\r\4\f=\f}\v=\vÇ\n9\v'\4=\vc\nB\b\2\0019\bÉ\3\18\n\5\0B\b\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\1\0\0\1\0\0\1\0\0\1\0\0\fremoved\vdelete\vchange\nadded\1\0\0\badd\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\0\0\vbranch\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\1\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\1\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\1\tleft\3\3\tcond\1\0\2\funnamed\14[No Name]\rreadonly\t ÓÇ¢\rmodified\6 \1\2\0\0\rfilename\1\0\1\tleft\3\3\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\fsymbols\thint\tinfo\twarn\fwarning\1\0\0\nerror\rmy_icons\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\fpadding\1\0\1\tleft\3\3\ncolor\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\1\0\0\abg\vbg_alt\1\0\0\1\0\4\23section_separators\5\25component_separators\5\18icons_enabled\1\17globalstatus\1\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\6t\6!\ar?\nwhite\arm\6r\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\vpurple\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\afg\17my_ui_colors\14my_colors\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\nç\2\0\0\5\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\a\0006\4\3\0009\4\4\0049\4\5\0049\4\6\4=\4\b\0036\4\3\0009\4\4\0049\4\5\0049\4\t\4=\4\n\0036\4\3\0009\4\4\0049\4\5\0049\4\v\4=\4\f\0036\4\3\0009\4\4\0049\4\5\0049\4\r\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\vcolors\1\0\3\15set_cursor\2\17line_opacity\4ö≥ÊÃ\tô≥Ê˛\3\15focus_only\1\vvisual\vpurple\vinsert\tblue\vdelete\bred\tcopy\1\0\0\vyellow\14my_colors\6g\bvim\nsetup\nmodes\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesú\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\3\0009\3\4\1>\3\1\0029\3\5\1>\3\2\0029\3\6\0005\5\a\0=\2\b\0053\6\t\0=\6\n\5B\3\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nsetup\14prettierd\vstylua\15formatting\rbuiltins\fnull-ls\frequire\0" },
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
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nÙ\5\0\0\a\0&\00076\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\1\5\0015\3\14\0005\4\6\0006\5\0\0009\5\1\0059\5\a\0059\5\b\5=\5\t\0045\5\n\0=\5\v\0044\5\3\0005\6\f\0>\6\1\5=\5\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0045\5\20\0009\6\19\0=\6\21\5=\5\22\0045\5\23\0009\6\19\0=\6\21\5=\5\24\0045\5\26\0009\6\25\0=\6\21\5=\5\27\4=\4\28\3B\1\2\0016\1\0\0009\1\29\0019\1\30\1'\3\31\0'\4 \0'\5!\0005\6\"\0B\1\5\0016\1\0\0009\1\29\0019\1\30\1'\3\31\0'\4#\0'\5$\0005\6%\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\abg\tfill\1\0\0\15background\nguibg\1\0\0\vbg_alt\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\14highlight\14Directory\rfiletype\rNvimTree\15text_align\tleft\20separator_style\1\3\0\0\5\5\18modified_icon\rmodified\rmy_icons\1\0\a\28show_buffer_close_icons\1\20show_close_icon\1\19indicator_icon\5\22show_buffer_icons\1\16diagnostics\1\27always_show_bufferline\2\25enforce_regular_tabs\1\nsetup\15bufferline\frequire\17my_ui_colors\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0„\b\1\0\r\0D\0Ç\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\0016\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0029\4\n\0035\6\14\0005\a\f\0003\b\v\0=\b\r\a=\a\15\0065\a\18\0009\b\16\0039\b\17\bB\b\1\2=\b\19\a9\b\16\0039\b\20\bB\b\1\2=\b\21\a9\b\16\0039\n\16\0039\n\22\n)\f¸ˇB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\16\0039\n\16\0039\n\22\n)\f\4\0B\n\2\0025\v\25\0B\b\3\2=\b\26\a9\b\16\0039\n\16\0039\n\27\nB\n\1\0025\v\28\0B\b\3\2=\b\29\a9\b\16\0039\b\30\bB\b\1\2=\b\31\a9\b\16\0039\b \b5\n#\0009\v!\0039\v\"\v=\v$\nB\b\2\2=\b%\a9\b\16\0033\n&\0005\v'\0B\b\3\2=\b(\a9\b\16\0033\n)\0005\v*\0B\b\3\2=\b+\a=\a\16\0065\a-\0005\b,\0=\b.\a=\a/\0069\a0\0039\a1\a4\t\3\0005\n2\0>\n\1\t5\n3\0>\n\2\t4\n\3\0005\v4\0>\v\1\nB\a\3\2=\a1\0065\a9\0009\b5\0005\n6\0003\v7\0=\v8\nB\b\2\2=\b:\a=\a;\6B\4\2\0019\4\n\0039\4<\4'\6=\0005\a?\0004\b\3\0005\t>\0>\t\1\b=\b1\aB\4\3\0019\4\n\0039\4<\4'\6@\0005\aC\0009\b0\0039\b1\b4\n\3\0005\vA\0>\v\1\n4\v\3\0005\fB\0>\f\1\vB\b\3\2=\b1\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\18documentation\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\npaths\1\0\0\1\2\0\0\19./lua/snippets\tload\"luasnip.loaders.from_snipmate\0\flspkind\frequire\0" },
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
    config = { "\27LJ\2\n€\t\0\2\t\1\"\0z9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\30document_range_formatting\24document_formatting\26resolved_capabilitiesì\n\1\0\16\0;\0ê\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\"\0005\b\29\0006\t\3\0009\t\30\t9\t\31\t9\t \t=\t!\b=\b#\aB\5\2\0015\5%\0006\6\3\0009\6\30\0069\6\31\0069\6$\6=\6&\0056\6\3\0009\6\30\0069\6\31\0069\6'\6=\6(\0056\6\3\0009\6\30\0069\6\31\0069\6)\6=\6*\0056\6\3\0009\6\30\0069\6\31\0069\6 \6=\6+\0056\6\22\0\18\b\5\0B\6\2\4H\t\fÄ'\v,\0\18\f\t\0&\v\f\v6\f\3\0009\f-\f9\f.\f\18\14\v\0005\15/\0=\n0\15=\v1\15=\v2\15B\f\3\1F\t\3\3R\tÚ6\6\3\0009\6\16\0069\0063\0066\a\3\0009\a\16\a9\a5\a6\t\3\0009\t\16\t9\t3\t9\t6\t5\n7\0B\a\3\2=\a4\0066\6\3\0009\6\16\0069\0063\0066\a\3\0009\a\16\a9\a5\a6\t\3\0009\t\16\t9\t3\t9\t9\t5\n:\0B\a\3\2=\a8\0062\0\0ÄK\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\tHint\tInfo\tinfo\tWarn\fwarning\nError\1\0\0\nerror\17virtual_text\1\0\4\14underline\2\nsigns\2\18severity_sort\1\21update_in_insert\2\vprefix\thint\rmy_icons\6g\1\0\1\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n©\r\0\0\b\0=\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0005\2\b\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\f\0'\2\r\0B\0\2\0029\0\14\0005\2\15\0004\3\0\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0005\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\3=\3 \0025\3!\0=\3\v\0025\3\"\0005\4#\0004\5\0\0=\5$\4=\4%\3=\3&\0025\3'\0=\3(\0025\3*\0005\4)\0=\4+\0035\4,\0005\5-\0005\6/\0005\a.\0=\a0\0065\a1\0=\a2\6=\0063\5=\0054\4=\0045\3=\0036\2B\0\2\0016\0\0\0009\0007\0009\0008\0'\0029\0'\3:\0'\4;\0005\5<\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\2\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\nwidth\3(\19relativenumber\1\15signcolumn\byes\vnumber\1\31preserve_window_proportins\1\tside\tleft\1\0\3\ftimeout\3¨\2\venable\2\vignore\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\fwarning\bÔÅ±\1\0\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\18hijack_cursor\1\nsetup\14nvim-tree\frequire\bgit\1\0\a\fdeleted\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\runstaged\bÔëÑ\14untracked\bÔëÑ\vfolder\1\0\2\fdefault\bÔÅî\topen\bÔÅ∏\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\0\18folder_arrows\3\0\bgit\3\1\25nvim_tree_show_icons\28nvim_tree_special_files\29nvim_tree_indent_markers\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¢\6\0\0\b\0'\0J6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4$\0'\5%\0005\6&\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\vsilent\2\fnoremap\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\vsilent\2\fnoremap\2\29:Telescope live_grep<cr>\afg\1\0\2\vsilent\2\fnoremap\2\31:Telescope grep_string<cr>\afs\1\0\2\vsilent\2\fnoremap\2\30:Telescope find_files<cr>\6F\1\0\2\vsilent\2\fnoremap\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ä\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vsingle\1\0\t\18close_on_exit\2\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\nˆ\a\0\0\6\0*\0o6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0006\0\0\0009\0\1\0005\1\f\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0005\1\19\0006\2\0\0009\2\1\0029\2\17\0029\2\18\2=\2\18\0016\2\0\0009\2\1\0029\2\20\0029\2\21\2=\2\22\0016\2\0\0009\2\1\0029\2\20\0029\2\23\2=\2\24\0016\2\0\0009\2\1\0029\2\20\0029\2\25\2=\2\26\0016\2\0\0009\2\1\0029\2\20\0029\2\27\2=\2\28\0015\2\29\0006\3\0\0009\3\1\0039\3\20\0039\3\21\3=\3\30\0026\3\0\0009\3\1\0039\3\20\0039\3\23\3=\3\31\0026\3\0\0009\3\1\0039\3\20\0039\3 \3=\3!\2=\2\"\1=\1\16\0006\0\0\0009\0#\0'\2$\0B\0\2\0016\0\0\0009\0%\0009\0&\0)\2\0\0'\3'\0005\4(\0006\5\0\0009\5\1\0059\5\17\0059\5\18\5=\5)\4B\0\4\1K\0\1\0\afg\1\0\0\24IndentBlanklineChar\16nvim_set_hl\bapi\27colorscheme tokyonight\bcmd\rgitSigns\badd\ngreen\vchange\vdelete\1\0\0\thint\nwhite\tinfo\tblue\fwarning\vyellow\nerror\bred\14my_colors\1\0\0\abg\17my_ui_colors\22tokyonight_colors(tokyonight_hide_inactive_statusline\26tokyonight_dark_float\28tokyonight_dark_sidebar\1\6\0\0\aqf\15vista_kind\rterminal\vpacker\rNvimTree\24tokyonight_sidebars#tokyonight_transparent_sidebar\27tokyonight_transparent tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\31tokyonight_terminal_colors\nstorm\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
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
try_loadstring("\27LJ\2\nß\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0&indent_blankline_filetype_exclude\1\6\0\0\thelp\rstartify\vpacker\rNvimTree\vctrlsf%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\bÓò°\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesú\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\3\0009\3\4\1>\3\1\0029\3\5\1>\3\2\0029\3\6\0005\5\a\0=\2\b\0053\6\t\0=\6\n\5B\3\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nsetup\14prettierd\vstylua\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n€\t\0\2\t\1\"\0z9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\30document_range_formatting\24document_formatting\26resolved_capabilitiesì\n\1\0\16\0;\0ê\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\"\0005\b\29\0006\t\3\0009\t\30\t9\t\31\t9\t \t=\t!\b=\b#\aB\5\2\0015\5%\0006\6\3\0009\6\30\0069\6\31\0069\6$\6=\6&\0056\6\3\0009\6\30\0069\6\31\0069\6'\6=\6(\0056\6\3\0009\6\30\0069\6\31\0069\6)\6=\6*\0056\6\3\0009\6\30\0069\6\31\0069\6 \6=\6+\0056\6\22\0\18\b\5\0B\6\2\4H\t\fÄ'\v,\0\18\f\t\0&\v\f\v6\f\3\0009\f-\f9\f.\f\18\14\v\0005\15/\0=\n0\15=\v1\15=\v2\15B\f\3\1F\t\3\3R\tÚ6\6\3\0009\6\16\0069\0063\0066\a\3\0009\a\16\a9\a5\a6\t\3\0009\t\16\t9\t3\t9\t6\t5\n7\0B\a\3\2=\a4\0066\6\3\0009\6\16\0069\0063\0066\a\3\0009\a\16\a9\a5\a6\t\3\0009\t\16\t9\t3\t9\t9\t5\n:\0B\a\3\2=\a8\0062\0\0ÄK\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\tHint\tInfo\tinfo\tWarn\fwarning\nError\1\0\0\nerror\17virtual_text\1\0\4\14underline\2\nsigns\2\18severity_sort\1\21update_in_insert\2\vprefix\thint\rmy_icons\6g\1\0\1\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¢\6\0\0\b\0'\0J6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4$\0'\5%\0005\6&\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\vsilent\2\fnoremap\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\vsilent\2\fnoremap\2\29:Telescope live_grep<cr>\afg\1\0\2\vsilent\2\fnoremap\2\31:Telescope grep_string<cr>\afs\1\0\2\vsilent\2\fnoremap\2\30:Telescope find_files<cr>\6F\1\0\2\vsilent\2\fnoremap\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n©\r\0\0\b\0=\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0005\2\b\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\f\0'\2\r\0B\0\2\0029\0\14\0005\2\15\0004\3\0\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0005\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\3=\3 \0025\3!\0=\3\v\0025\3\"\0005\4#\0004\5\0\0=\5$\4=\4%\3=\3&\0025\3'\0=\3(\0025\3*\0005\4)\0=\4+\0035\4,\0005\5-\0005\6/\0005\a.\0=\a0\0065\a1\0=\a2\6=\0063\5=\0054\4=\0045\3=\0036\2B\0\2\0016\0\0\0009\0007\0009\0008\0'\0029\0'\3:\0'\4;\0005\5<\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\2\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\nwidth\3(\19relativenumber\1\15signcolumn\byes\vnumber\1\31preserve_window_proportins\1\tside\tleft\1\0\3\ftimeout\3¨\2\venable\2\vignore\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\fwarning\bÔÅ±\1\0\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\18hijack_cursor\1\nsetup\14nvim-tree\frequire\bgit\1\0\a\fdeleted\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\runstaged\bÔëÑ\14untracked\bÔëÑ\vfolder\1\0\2\fdefault\bÔÅî\topen\bÔÅ∏\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\0\18folder_arrows\3\0\bgit\3\1\25nvim_tree_show_icons\28nvim_tree_special_files\29nvim_tree_indent_markers\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ä\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vsingle\1\0\t\18close_on_exit\2\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\5¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\5¿\14lualine_x\rsections\vinsert\ntable?\0\0\4\1\5\0\t5\0\3\0-\1\0\0006\2\0\0009\2\1\0029\2\2\2B\2\1\0028\1\2\1=\1\4\0L\0\2\0\2¿\afg\1\0\0\tmode\afn\bvim\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31ù\16\1\0\14\0Ñ\1\0ç\0026\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0015\2\5\0009\3\4\1=\3\6\0029\3\a\0=\3\b\0029\3\t\0=\3\n\0029\3\t\0=\3\v\0029\3\t\0=\3\f\0029\3\r\0=\3\14\0029\3\4\1=\3\15\0029\3\16\0=\3\17\0029\3\16\0=\3\18\0029\3\16\0=\3\19\0029\3\20\0=\3\21\0029\3\22\0=\3\23\0029\3\22\0=\3\24\0029\3\r\0=\3\25\0029\3\r\0=\3\26\0029\3\22\0=\3\27\0029\3\22\0=\3\28\0029\3\29\0=\3\30\0029\3\4\1=\3\31\0029\3\29\0=\3 \0026\3!\0'\5\"\0B\3\2\0025\4$\0003\5#\0=\5%\0043\5&\0=\5'\0043\5(\0=\5)\0045\0055\0005\6*\0005\a/\0005\b.\0005\t+\0009\n\4\1=\n\4\t9\n,\1=\n-\t=\t\14\b=\b0\a5\b2\0005\t1\0009\n\4\1=\n\4\t9\n,\1=\n-\t=\t\14\b=\b3\a=\a4\6=\0066\0055\0067\0004\a\0\0=\a8\0064\a\0\0=\a9\0064\a\0\0=\a:\0064\a\0\0=\a;\0064\a\0\0=\a<\0064\a\0\0=\a=\6=\6>\0054\6\0\0=\6?\0055\6@\0=\6A\0053\6B\0003\aC\0\18\b\6\0005\nD\0003\vE\0=\vF\n5\vG\0=\vH\nB\b\2\1\18\b\6\0005\nI\0005\vJ\0=\vK\n5\vN\0006\f\0\0009\f\1\f9\fL\f9\fM\f=\fM\v6\f\0\0009\f\1\f9\fL\f9\fO\f=\fP\v6\f\0\0009\f\1\f9\fL\f9\fQ\f=\fQ\v6\f\0\0009\f\1\f9\fL\f9\fR\f=\fR\v=\vS\n5\vU\0005\fT\0009\r\22\0=\r\4\f=\fV\v5\fW\0009\r\20\0=\r\4\f=\fX\v5\fY\0009\r\t\0=\r\4\f=\fZ\v5\f[\0009\r\29\0=\r\4\f=\f\\\v=\v]\n5\v^\0=\vH\nB\b\2\1\18\b\6\0005\n_\0005\vb\0'\f`\0006\r\0\0009\r\1\r9\rL\r9\ra\r&\f\r\f=\fa\v=\vS\n9\v%\4=\vc\n5\vd\0=\vH\n5\ve\0009\f\29\0=\f\4\v=\vF\nB\b\2\1\18\b\6\0005\nf\0B\b\2\1\18\b\6\0005\ng\0005\vh\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\6\0004\n\3\0003\vi\0>\v\1\nB\b\2\1\18\b\6\0005\nj\0005\vk\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\6\0005\nn\0003\vl\0>\v\1\n5\vm\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\no\0005\vp\0=\vH\n5\vq\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\nr\0009\v'\4=\vc\n5\vs\0=\vH\n5\vt\0009\f\4\1=\f\4\v=\vF\nB\b\2\1\18\b\a\0005\nu\0005\vv\0=\vF\nB\b\2\1\18\b\a\0005\nw\0005\vy\0006\f\0\0009\f\1\f9\fL\f9\fx\f=\fz\v6\f\0\0009\f\1\f9\fL\f9\f{\f=\fa\v6\f\0\0009\f\1\f9\fL\f9\f|\f=\f}\v=\vS\n5\v\0005\f~\0009\r\a\0=\r\4\f=\fz\v5\fÄ\0009\r\20\0=\r\4\f=\fa\v5\fÅ\0009\r\22\0=\r\4\f=\f}\v=\vÇ\n9\v'\4=\vc\nB\b\2\0019\bÉ\3\18\n\5\0B\b\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\1\0\0\1\0\0\1\0\0\1\0\0\fremoved\vdelete\vchange\nadded\1\0\0\badd\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\0\0\vbranch\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\1\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\1\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\1\tleft\3\3\tcond\1\0\2\funnamed\14[No Name]\rreadonly\t ÓÇ¢\rmodified\6 \1\2\0\0\rfilename\1\0\1\tleft\3\3\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\fsymbols\thint\tinfo\twarn\fwarning\1\0\0\nerror\rmy_icons\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\fpadding\1\0\1\tleft\3\3\ncolor\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\1\0\0\abg\vbg_alt\1\0\0\1\0\4\23section_separators\5\25component_separators\5\18icons_enabled\1\17globalstatus\1\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\6t\6!\ar?\nwhite\arm\6r\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\vpurple\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\afg\17my_ui_colors\14my_colors\6g\bvim\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0„\b\1\0\r\0D\0Ç\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\0016\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0029\4\n\0035\6\14\0005\a\f\0003\b\v\0=\b\r\a=\a\15\0065\a\18\0009\b\16\0039\b\17\bB\b\1\2=\b\19\a9\b\16\0039\b\20\bB\b\1\2=\b\21\a9\b\16\0039\n\16\0039\n\22\n)\f¸ˇB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\16\0039\n\16\0039\n\22\n)\f\4\0B\n\2\0025\v\25\0B\b\3\2=\b\26\a9\b\16\0039\n\16\0039\n\27\nB\n\1\0025\v\28\0B\b\3\2=\b\29\a9\b\16\0039\b\30\bB\b\1\2=\b\31\a9\b\16\0039\b \b5\n#\0009\v!\0039\v\"\v=\v$\nB\b\2\2=\b%\a9\b\16\0033\n&\0005\v'\0B\b\3\2=\b(\a9\b\16\0033\n)\0005\v*\0B\b\3\2=\b+\a=\a\16\0065\a-\0005\b,\0=\b.\a=\a/\0069\a0\0039\a1\a4\t\3\0005\n2\0>\n\1\t5\n3\0>\n\2\t4\n\3\0005\v4\0>\v\1\nB\a\3\2=\a1\0065\a9\0009\b5\0005\n6\0003\v7\0=\v8\nB\b\2\2=\b:\a=\a;\6B\4\2\0019\4\n\0039\4<\4'\6=\0005\a?\0004\b\3\0005\t>\0>\t\1\b=\b1\aB\4\3\0019\4\n\0039\4<\4'\6@\0005\aC\0009\b0\0039\b1\b4\n\3\0005\vA\0>\v\1\n4\v\3\0005\fB\0>\f\1\vB\b\3\2=\b1\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\18documentation\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\npaths\1\0\0\1\2\0\0\19./lua/snippets\tload\"luasnip.loaders.from_snipmate\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n‚\4\0\0\6\0\20\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\18\0005\3\t\0005\4\3\0006\5\4\0009\5\5\0059\5\6\0059\5\a\5=\5\b\4=\4\a\0035\4\n\0006\5\4\0009\5\5\0059\5\6\0059\5\v\5=\5\b\4=\4\v\0035\4\f\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\r\0035\4\14\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\15\0035\4\16\0006\5\4\0009\5\5\0059\5\6\0059\5\r\5=\5\b\4=\4\17\3=\3\19\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\3\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsDelete\14topdelete\1\0\3\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\3\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\3\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\1\0\0\ttext\badd\rmy_icons\6g\bvim\1\0\3\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\nÙ\5\0\0\a\0&\00076\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\1\5\0015\3\14\0005\4\6\0006\5\0\0009\5\1\0059\5\a\0059\5\b\5=\5\t\0045\5\n\0=\5\v\0044\5\3\0005\6\f\0>\6\1\5=\5\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0045\5\20\0009\6\19\0=\6\21\5=\5\22\0045\5\23\0009\6\19\0=\6\21\5=\5\24\0045\5\26\0009\6\25\0=\6\21\5=\5\27\4=\4\28\3B\1\2\0016\1\0\0009\1\29\0019\1\30\1'\3\31\0'\4 \0'\5!\0005\6\"\0B\1\5\0016\1\0\0009\1\29\0019\1\30\1'\3\31\0'\4#\0'\5$\0005\6%\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\abg\tfill\1\0\0\15background\nguibg\1\0\0\vbg_alt\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\14highlight\14Directory\rfiletype\rNvimTree\15text_align\tleft\20separator_style\1\3\0\0\5\5\18modified_icon\rmodified\rmy_icons\1\0\a\28show_buffer_close_icons\1\20show_close_icon\1\19indicator_icon\5\22show_buffer_icons\1\16diagnostics\1\27always_show_bufferline\2\25enforce_regular_tabs\1\nsetup\15bufferline\frequire\17my_ui_colors\6g\bvim\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\n \2\0\0\3\0\15\0\0276\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\0\0009\0\1\0005\1\r\0005\2\f\0=\2\14\1=\1\v\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\aat\tdone\23duration_less_than\3Ë\a\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\nˆ\a\0\0\6\0*\0o6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0006\0\0\0009\0\1\0005\1\f\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0005\1\19\0006\2\0\0009\2\1\0029\2\17\0029\2\18\2=\2\18\0016\2\0\0009\2\1\0029\2\20\0029\2\21\2=\2\22\0016\2\0\0009\2\1\0029\2\20\0029\2\23\2=\2\24\0016\2\0\0009\2\1\0029\2\20\0029\2\25\2=\2\26\0016\2\0\0009\2\1\0029\2\20\0029\2\27\2=\2\28\0015\2\29\0006\3\0\0009\3\1\0039\3\20\0039\3\21\3=\3\30\0026\3\0\0009\3\1\0039\3\20\0039\3\23\3=\3\31\0026\3\0\0009\3\1\0039\3\20\0039\3 \3=\3!\2=\2\"\1=\1\16\0006\0\0\0009\0#\0'\2$\0B\0\2\0016\0\0\0009\0%\0009\0&\0)\2\0\0'\3'\0005\4(\0006\5\0\0009\5\1\0059\5\17\0059\5\18\5=\5)\4B\0\4\1K\0\1\0\afg\1\0\0\24IndentBlanklineChar\16nvim_set_hl\bapi\27colorscheme tokyonight\bcmd\rgitSigns\badd\ngreen\vchange\vdelete\1\0\0\thint\nwhite\tinfo\tblue\fwarning\vyellow\nerror\bred\14my_colors\1\0\0\abg\17my_ui_colors\22tokyonight_colors(tokyonight_hide_inactive_statusline\26tokyonight_dark_float\28tokyonight_dark_sidebar\1\6\0\0\aqf\15vista_kind\rterminal\vpacker\rNvimTree\24tokyonight_sidebars#tokyonight_transparent_sidebar\27tokyonight_transparent tokyonight_italic_variables tokyonight_italic_functions\31tokyonight_italic_keywords\31tokyonight_italic_comments\31tokyonight_terminal_colors\nstorm\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
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
