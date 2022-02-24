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
  ["battery.vim"] = {
    config = { "\27LJ\2\nü\4\0\0\3\0\v\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0'\1\a\0=\1\6\0006\0\0\0009\0\3\0'\1\t\0=\1\b\0006\0\0\0009\0\3\0)\1\5\0=\1\n\0K\0\1\0\24battery#graph_width\5\31battery#symbol_discharging\bÔëÑ\28battery#symbol_charging\f%v%% %s\29battery#component_format\6g–\2          fun! Battery_icon()\n            let l:battery_icon = { 5: \"ÔÅìÔÅìÔÅìÔØ¶ÔÅîÔÅîÔÅî\", 4: \"\", 3: \"\", 2: \"\", 1: \"ÔÅîÔÅîÔÅî ÔÆ£ ÔÅìÔÅìÔÅì\"}\n            let l:backend = battery#backend()\n            let l:nf = float2nr(round(backend.value / 20.0))\n            return printf('%s', get(battery_icon, nf))\n          endfun\n        \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/battery.vim",
    url = "https://github.com/lambdalisue/battery.vim"
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
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["ctrlsf.vim"] = {
    config = { "\27LJ\2\në\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nl\0\0\5\0\5\1\n5\0\0\0004\1\3\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0?\2\0\0=\1\4\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\0\2\bexe\14prettierd\nstdin\2\3ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚îÉ\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nó\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\25show_current_context\2\31show_current_context_start\1\tchar\b‚îÇ\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31Å\15\1\0\f\0j\0÷\0016\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0025\2\6\0003\3\5\0=\3\a\0023\3\b\0=\3\t\0023\3\n\0=\3\v\0025\3\25\0005\4\f\0005\5\19\0005\6\17\0005\a\14\0009\b\r\0=\b\r\a9\b\15\0=\b\16\a=\a\18\6=\6\20\0055\6\22\0005\a\21\0009\b\r\0=\b\r\a9\b\15\0=\b\16\a=\a\18\6=\6\23\5=\5\24\4=\4\26\0035\4\27\0004\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\0044\5\0\0=\5\31\0044\5\0\0=\5 \0044\5\0\0=\5!\4=\4\"\0034\4\0\0=\4#\0035\4$\0=\4%\0033\4&\0003\5'\0\18\6\4\0005\b(\0005\t*\0009\n)\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t,\0=\t-\bB\6\2\1\18\6\4\0005\b.\0005\t0\0009\n/\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t1\0=\t-\bB\6\2\1\18\6\4\0005\b2\0005\t3\0009\n\r\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t4\0=\t-\bB\6\2\1\18\6\4\0005\b5\0005\t6\0=\t7\b5\t8\0=\t9\b5\t;\0005\n:\0009\v)\0=\v\r\n=\n<\t5\n>\0009\v=\0=\v\r\n=\n?\t5\nA\0009\v@\0=\v\r\n=\nB\t5\nD\0009\vC\0=\v\r\n=\nE\t=\tF\b5\tG\0=\t-\bB\6\2\1\18\6\4\0005\bH\0005\tI\0=\t-\b9\t\a\2=\tJ\bB\6\2\1\18\6\4\0005\bK\0005\tL\0=\t9\b9\t\a\2=\tJ\b5\tM\0009\nC\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0005\bN\0B\6\2\1\18\6\4\0005\bO\0005\tP\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tQ\0>\t\1\bB\6\2\1\18\6\4\0005\bR\0005\tS\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0005\bV\0003\tT\0>\t\1\b5\tU\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\bW\0005\tX\0=\t-\b5\tY\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\bZ\0009\t\t\2=\tJ\b5\t[\0=\t-\b5\t\\\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\b]\0005\t^\0=\t+\bB\6\2\1\18\6\5\0005\b_\0005\t`\0=\t9\b5\tb\0005\na\0009\v/\0=\v\r\n=\nc\t5\nd\0009\v=\0=\v\r\n=\ne\t5\nf\0009\v)\0=\v\r\n=\ng\t=\th\b9\t\t\2=\tJ\bB\6\2\0019\6i\1\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\1\0\3\nadded\tÔÉæ \rmodified\tÔÖã \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\2\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\2\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\3\rreadonly\t ÓÇ¢\funnamed\14[No Name]\rmodified\t ÔÅÄ\1\2\0\0\rfilename\tcond\1\0\1\tleft\3\2\1\2\2\0\rfiletype\14icon_only\2\fcolored\2\1\0\1\tleft\3\2\22diagnostics_color\15color_hint\1\0\0\nwhite\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\fsymbols\1\0\4\tinfo\tÔÅö \nerror\tÔÅó \twarn\tÔÅ™ \thint\tÔ¥û \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\tleft\3\2\1\0\0\1\2\0\0\tmode\1\0\1\tleft\3\1\1\0\0\ngreen\1\2\0\0\27%{battery#component()}\fpadding\1\0\1\tleft\3\2\ncolor\1\0\0\bred\1\2\0\0\22%{Battery_icon()}\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\vbg_alt\1\0\0\afg\1\0\3\23section_separators\5\25component_separators\5\18icons_enabled\2\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\14my_colors\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\nÅ\2\0\0\5\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\a\0006\4\3\0009\4\4\0049\4\5\0049\4\6\4=\4\b\0036\4\3\0009\4\4\0049\4\5\0049\4\t\4=\4\n\0036\4\3\0009\4\4\0049\4\5\0049\4\v\4=\4\f\0036\4\3\0009\4\4\0049\4\5\0049\4\r\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\vcolors\1\0\2\15focus_only\1\17line_opacity\4ö≥ÊÃ\tô≥Ê˛\3\vvisual\vpurple\vinsert\tblue\vdelete\bred\tcopy\1\0\0\vyellow\14my_colors\6g\bvim\nsetup\nmodes\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nÇ\5\0\0\6\0!\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\14\0005\4\b\0006\5\t\0009\5\n\0059\5\v\0059\5\f\5=\5\r\4=\4\15\0035\4\17\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\18\0035\4\19\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\20\0035\4\21\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\22\3=\3\23\2B\0\2\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\27\0'\4\28\0005\5\29\0B\0\5\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\30\0'\4\31\0005\5 \0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\tfill\1\0\0\15background\1\0\0\vbg_alt\20buffer_selected\1\0\0\nguibg\abg\14my_colors\6g\bvim\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ë\a\1\0\r\0009\0r6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f¸ˇB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a.\0009\b,\0005\n-\0B\b\2\2=\b/\a=\a0\6B\4\2\0019\4\5\0039\0041\4'\0062\0005\a4\0004\b\3\0005\t3\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0041\4'\0065\0005\a8\0009\b'\0039\b(\b4\n\3\0005\v6\0>\v\1\n4\v\3\0005\f7\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\1\0\1\tmode\16symbol_text\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\0\0\flspkind\frequire\0" },
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
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÚ\t\0\2\t\1 \0z6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\30\2'\4\31\0B\2\2\1K\0\1\0\0¿= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvimÉ\1\0\0\5\3\6\0\r5\0\0\0-\1\0\0=\1\1\0-\1\1\0=\1\2\0005\1\3\0=\1\4\0-\1\2\0\18\3\1\0009\1\5\1\18\4\0\0B\1\3\1K\0\1\0\2¿\4Ä\f¿\nsetup\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0À\6\1\0\17\0$\0P5\0\0\0006\1\1\0'\3\2\0B\1\2\0023\2\3\0006\3\1\0'\5\4\0B\3\2\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0026\5\1\0'\a\t\0B\5\2\0029\5\n\5\18\a\4\0B\5\2\2\18\4\5\0005\5\v\0006\6\f\0\18\b\5\0B\6\2\4X\t\23Ä9\v\r\3\18\r\n\0B\v\2\3\15\0\v\0X\r\17Ä\18\15\f\0009\r\14\f3\16\15\0B\r\3\1\18\15\f\0009\r\16\fB\r\2\2\14\0\r\0X\r\bÄ6\r\17\0'\15\18\0\18\16\n\0&\15\16\15B\r\2\1\18\15\f\0009\r\19\fB\r\2\0012\v\0ÄE\t\3\3R\tÁ6\6\5\0009\6\20\0069\6\21\0065\b\23\0005\t\22\0=\t\24\b5\t\25\0=\t\26\bB\6\2\0015\6\27\0006\a\28\0\18\t\6\0B\a\2\4H\n\fÄ'\f\29\0\18\r\n\0&\f\r\f6\r\5\0009\r\30\r9\r\31\r\18\15\f\0005\16 \0=\v!\16=\f\"\16=\f#\16B\r\3\1F\n\3\3R\nÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\nError\bÔÅó\tHint\bÔ¥û\tInfo\bÔÅö\tWarn\bÔÅ™\nfloat\1\0\6\vprefix\5\vsource\valways\vheader\5\14focusable\1\vborder\frounded\nstyle\fminimal\17virtual_text\1\0\4\nsigns\2\18severity_sort\1\21update_in_insert\2\14underline\2\1\0\2\vprefix\b‚óè\vsource\valways\vconfig\15diagnostic\finstall\16Installing \nprint\17is_installed\0\ron_ready\15get_server\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\31nvim-lsp-installer.servers\0\14lspconfig\frequire\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÔ\n\0\0\6\0003\0M6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1˙\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\1=\1\14\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0004\3\0\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0004\4\0\0=\4\28\3=\3\29\0025\3\30\0004\4\0\0=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\3=\3$\0025\3%\0=\3\17\0025\3&\0005\4'\0004\5\0\0=\5(\4=\4)\3=\3*\0025\3+\0=\3,\2B\0\2\0016\0\0\0009\0-\0009\0.\0'\2/\0'\0030\0'\0041\0005\0052\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vnumber\1\15signcolumn\byes\nwidth\3(\19relativenumber\1\16auto_resize\1\tside\tleft\1\0\3\venable\2\vignore\2\ftimeout\3Ù\3\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\2\nsetup\14nvim-tree\frequire\bgit\1\0\a\14untracked\bÔëÑ\fdeleted\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\nfiles\3\1\ffolders\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\nÖ\5\0\0\6\0\19\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\3\fnoremap\2\texpr\1\vsilent\2J <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>\15<Leader>ri\1\0\3\fnoremap\2\texpr\1\vsilent\2K <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>\15<Leader>rv\1\0\3\fnoremap\2\texpr\1\vsilent\2S <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>\15<Leader>rf\1\0\3\fnoremap\2\texpr\1\vsilent\2K <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>\15<Leader>re\6v\bset\vkeymap\bvim\nsetup\16refactoring\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n£\6\0\0\b\0'\0J6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4$\0'\5%\0005\6&\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ë\2\1\0\4\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\0016\0\a\0003\1\t\0=\1\b\0006\0\4\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\1\0\n\17hide_numbers\2\18close_on_exit\2\17open_mapping\n<C-\\>\tsize\3\v\20start_in_insert\2\14direction\15horizontal\19shading_factor\0061\20insert_mappings\2\17persist_size\1\20shade_terminals\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyodark.nvim"] = {
    config = { "\27LJ\2\nò\b\0\0\a\0+\0è\0016\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\0026\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\17\0005\5\18\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\19\0005\5\22\0006\6\0\0009\6\1\0069\6\20\0069\6\21\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\24\0005\5\26\0006\6\0\0009\6\1\0069\6\20\0069\6\25\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\27\0005\5\29\0006\6\0\0009\6\1\0069\6\20\0069\6\28\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\30\0005\5 \0006\6\0\0009\6\1\0069\6\20\0069\6\31\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4!\0005\5#\0006\6\0\0009\6\1\0069\6\20\0069\6\"\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4$\0005\5%\0006\6\0\0009\6\1\0069\6\20\0069\6\25\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4&\0005\5'\0006\6\0\0009\6\1\0069\6\20\0069\6\28\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4(\0005\5*\0006\6\0\0009\6\1\0069\6\20\0069\6)\6=\6\23\5B\1\4\1K\0\1\0\1\0\0\abg\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\vpurple\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\16GitSignsAdd\1\0\1\afg\f#f6b667\nTitle\1\0\1\afg\f#f6b667\14Character\1\0\1\afg\f#f6b667\vString\16nvim_set_hl\14tokyodark\26nvim_create_namespace\bapi\26colorscheme tokyodark\bcmd\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n¶\4\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\att\6n\bset\vkeymap\bvim\nsigns\1\0\5\nerror\bÔÅó\thint\tÔ¥û \16information\bÔÅö\fwarning\bÔÅ™\nother\bÔ´†\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\v\14auto_fold\1\17auto_preview\2\17indent_lines\2\nwidth\0032\rposition\vbottom\vheight\3\n\25use_diagnostic_signs\2\tmode\26workspace_diagnostics\14auto_open\1\nicons\2\15auto_close\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n£\6\0\0\b\0'\0J6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4$\0'\5%\0005\6&\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ë\2\1\0\4\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\0016\0\a\0003\1\t\0=\1\b\0006\0\4\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\1\0\n\17hide_numbers\2\18close_on_exit\2\17open_mapping\n<C-\\>\tsize\3\v\20start_in_insert\2\14direction\15horizontal\19shading_factor\0061\20insert_mappings\2\17persist_size\1\20shade_terminals\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\nÇ\5\0\0\6\0!\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\14\0005\4\b\0006\5\t\0009\5\n\0059\5\v\0059\5\f\5=\5\r\4=\4\15\0035\4\17\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\18\0035\4\19\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\20\0035\4\21\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\22\3=\3\23\2B\0\2\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\27\0'\4\28\0005\5\29\0B\0\5\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\30\0'\4\31\0005\5 \0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\tfill\1\0\0\15background\1\0\0\vbg_alt\20buffer_selected\1\0\0\nguibg\abg\14my_colors\6g\bvim\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nl\0\0\5\0\5\1\n5\0\0\0004\1\3\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0?\2\0\0=\1\4\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\0\2\bexe\14prettierd\nstdin\2\3ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nó\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\25show_current_context\2\31show_current_context_start\1\tchar\b‚îÇ\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: battery.vim
time([[Config for battery.vim]], true)
try_loadstring("\27LJ\2\nü\4\0\0\3\0\v\0\0216\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0'\1\a\0=\1\6\0006\0\0\0009\0\3\0'\1\t\0=\1\b\0006\0\0\0009\0\3\0)\1\5\0=\1\n\0K\0\1\0\24battery#graph_width\5\31battery#symbol_discharging\bÔëÑ\28battery#symbol_charging\f%v%% %s\29battery#component_format\6g–\2          fun! Battery_icon()\n            let l:battery_icon = { 5: \"ÔÅìÔÅìÔÅìÔØ¶ÔÅîÔÅîÔÅî\", 4: \"\", 3: \"\", 2: \"\", 1: \"ÔÅîÔÅîÔÅî ÔÆ£ ÔÅìÔÅìÔÅì\"}\n            let l:backend = battery#backend()\n            let l:nf = float2nr(round(backend.value / 20.0))\n            return printf('%s', get(battery_icon, nf))\n          endfun\n        \bcmd\bvim\0", "config", "battery.vim")
time([[Config for battery.vim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\në\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: tokyodark.nvim
time([[Config for tokyodark.nvim]], true)
try_loadstring("\27LJ\2\nò\b\0\0\a\0+\0è\0016\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\0026\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\17\0005\5\18\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\19\0005\5\22\0006\6\0\0009\6\1\0069\6\20\0069\6\21\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\24\0005\5\26\0006\6\0\0009\6\1\0069\6\20\0069\6\25\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\27\0005\5\29\0006\6\0\0009\6\1\0069\6\20\0069\6\28\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\30\0005\5 \0006\6\0\0009\6\1\0069\6\20\0069\6\31\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4!\0005\5#\0006\6\0\0009\6\1\0069\6\20\0069\6\"\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4$\0005\5%\0006\6\0\0009\6\1\0069\6\20\0069\6\25\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4&\0005\5'\0006\6\0\0009\6\1\0069\6\20\0069\6\28\6=\6\23\5B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4(\0005\5*\0006\6\0\0009\6\1\0069\6\20\0069\6)\6=\6\23\5B\1\4\1K\0\1\0\1\0\0\abg\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\vpurple\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\16GitSignsAdd\1\0\1\afg\f#f6b667\nTitle\1\0\1\afg\f#f6b667\14Character\1\0\1\afg\f#f6b667\vString\16nvim_set_hl\14tokyodark\26nvim_create_namespace\bapi\26colorscheme tokyodark\bcmd\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0", "config", "tokyodark.nvim")
time([[Config for tokyodark.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
try_loadstring("\27LJ\2\nÖ\5\0\0\6\0\19\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\3\fnoremap\2\texpr\1\vsilent\2J <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>\15<Leader>ri\1\0\3\fnoremap\2\texpr\1\vsilent\2K <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>\15<Leader>rv\1\0\3\fnoremap\2\texpr\1\vsilent\2S <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>\15<Leader>rf\1\0\3\fnoremap\2\texpr\1\vsilent\2K <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>\15<Leader>re\6v\bset\vkeymap\bvim\nsetup\16refactoring\frequire\0", "config", "refactoring.nvim")
time([[Config for refactoring.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÚ\t\0\2\t\1 \0z6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\30\2'\4\31\0B\2\2\1K\0\1\0\0¿= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvimÉ\1\0\0\5\3\6\0\r5\0\0\0-\1\0\0=\1\1\0-\1\1\0=\1\2\0005\1\3\0=\1\4\0-\1\2\0\18\3\1\0009\1\5\1\18\4\0\0B\1\3\1K\0\1\0\2¿\4Ä\f¿\nsetup\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0À\6\1\0\17\0$\0P5\0\0\0006\1\1\0'\3\2\0B\1\2\0023\2\3\0006\3\1\0'\5\4\0B\3\2\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0026\5\1\0'\a\t\0B\5\2\0029\5\n\5\18\a\4\0B\5\2\2\18\4\5\0005\5\v\0006\6\f\0\18\b\5\0B\6\2\4X\t\23Ä9\v\r\3\18\r\n\0B\v\2\3\15\0\v\0X\r\17Ä\18\15\f\0009\r\14\f3\16\15\0B\r\3\1\18\15\f\0009\r\16\fB\r\2\2\14\0\r\0X\r\bÄ6\r\17\0'\15\18\0\18\16\n\0&\15\16\15B\r\2\1\18\15\f\0009\r\19\fB\r\2\0012\v\0ÄE\t\3\3R\tÁ6\6\5\0009\6\20\0069\6\21\0065\b\23\0005\t\22\0=\t\24\b5\t\25\0=\t\26\bB\6\2\0015\6\27\0006\a\28\0\18\t\6\0B\a\2\4H\n\fÄ'\f\29\0\18\r\n\0&\f\r\f6\r\5\0009\r\30\r9\r\31\r\18\15\f\0005\16 \0=\v!\16=\f\"\16=\f#\16B\r\3\1F\n\3\3R\nÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\nError\bÔÅó\tHint\bÔ¥û\tInfo\bÔÅö\tWarn\bÔÅ™\nfloat\1\0\6\vprefix\5\vsource\valways\vheader\5\14focusable\1\vborder\frounded\nstyle\fminimal\17virtual_text\1\0\4\nsigns\2\18severity_sort\1\21update_in_insert\2\14underline\2\1\0\2\vprefix\b‚óè\vsource\valways\vconfig\15diagnostic\finstall\16Installing \nprint\17is_installed\0\ron_ready\15get_server\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\31nvim-lsp-installer.servers\0\14lspconfig\frequire\1\0\2\fnoremap\2\vsilent\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31Å\15\1\0\f\0j\0÷\0016\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0025\2\6\0003\3\5\0=\3\a\0023\3\b\0=\3\t\0023\3\n\0=\3\v\0025\3\25\0005\4\f\0005\5\19\0005\6\17\0005\a\14\0009\b\r\0=\b\r\a9\b\15\0=\b\16\a=\a\18\6=\6\20\0055\6\22\0005\a\21\0009\b\r\0=\b\r\a9\b\15\0=\b\16\a=\a\18\6=\6\23\5=\5\24\4=\4\26\0035\4\27\0004\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\0044\5\0\0=\5\31\0044\5\0\0=\5 \0044\5\0\0=\5!\4=\4\"\0034\4\0\0=\4#\0035\4$\0=\4%\0033\4&\0003\5'\0\18\6\4\0005\b(\0005\t*\0009\n)\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t,\0=\t-\bB\6\2\1\18\6\4\0005\b.\0005\t0\0009\n/\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t1\0=\t-\bB\6\2\1\18\6\4\0005\b2\0005\t3\0009\n\r\0=\n\r\t9\n\15\0=\n\16\t=\t+\b5\t4\0=\t-\bB\6\2\1\18\6\4\0005\b5\0005\t6\0=\t7\b5\t8\0=\t9\b5\t;\0005\n:\0009\v)\0=\v\r\n=\n<\t5\n>\0009\v=\0=\v\r\n=\n?\t5\nA\0009\v@\0=\v\r\n=\nB\t5\nD\0009\vC\0=\v\r\n=\nE\t=\tF\b5\tG\0=\t-\bB\6\2\1\18\6\4\0005\bH\0005\tI\0=\t-\b9\t\a\2=\tJ\bB\6\2\1\18\6\4\0005\bK\0005\tL\0=\t9\b9\t\a\2=\tJ\b5\tM\0009\nC\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0005\bN\0B\6\2\1\18\6\4\0005\bO\0005\tP\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tQ\0>\t\1\bB\6\2\1\18\6\4\0005\bR\0005\tS\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\4\0005\bV\0003\tT\0>\t\1\b5\tU\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\bW\0005\tX\0=\t-\b5\tY\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\bZ\0009\t\t\2=\tJ\b5\t[\0=\t-\b5\t\\\0009\n\r\0=\n\r\t=\t+\bB\6\2\1\18\6\5\0005\b]\0005\t^\0=\t+\bB\6\2\1\18\6\5\0005\b_\0005\t`\0=\t9\b5\tb\0005\na\0009\v/\0=\v\r\n=\nc\t5\nd\0009\v=\0=\v\r\n=\ne\t5\nf\0009\v)\0=\v\r\n=\ng\t=\th\b9\t\t\2=\tJ\bB\6\2\0019\6i\1\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\1\0\3\nadded\tÔÉæ \rmodified\tÔÖã \fremoved\tÔÖÜ \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\2\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\2\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\3\rreadonly\t ÓÇ¢\funnamed\14[No Name]\rmodified\t ÔÅÄ\1\2\0\0\rfilename\tcond\1\0\1\tleft\3\2\1\2\2\0\rfiletype\14icon_only\2\fcolored\2\1\0\1\tleft\3\2\22diagnostics_color\15color_hint\1\0\0\nwhite\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\fsymbols\1\0\4\tinfo\tÔÅö \nerror\tÔÅó \twarn\tÔÅ™ \thint\tÔ¥û \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\tleft\3\2\1\0\0\1\2\0\0\tmode\1\0\1\tleft\3\1\1\0\0\ngreen\1\2\0\0\27%{battery#component()}\fpadding\1\0\1\tleft\3\2\ncolor\1\0\0\bred\1\2\0\0\22%{Battery_icon()}\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\vbg_alt\1\0\0\afg\1\0\3\23section_separators\5\25component_separators\5\18icons_enabled\2\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\14my_colors\6g\bvim\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÉ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚îÉ\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2ë\a\1\0\r\0009\0r6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f¸ˇB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a.\0009\b,\0005\n-\0B\b\2\2=\b/\a=\a0\6B\4\2\0019\4\5\0039\0041\4'\0062\0005\a4\0004\b\3\0005\t3\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0041\4'\0065\0005\a8\0009\b'\0039\b(\b4\n\3\0005\v6\0>\v\1\n4\v\3\0005\f7\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\1\0\1\tmode\16symbol_text\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\0\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÔ\n\0\0\6\0003\0M6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1˙\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\1=\1\14\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0004\3\0\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0004\4\0\0=\4\28\3=\3\29\0025\3\30\0004\4\0\0=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\3=\3$\0025\3%\0=\3\17\0025\3&\0005\4'\0004\5\0\0=\5(\4=\4)\3=\3*\0025\3+\0=\3,\2B\0\2\0016\0\0\0009\0-\0009\0.\0'\2/\0'\0030\0'\0041\0005\0052\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vnumber\1\15signcolumn\byes\nwidth\3(\19relativenumber\1\16auto_resize\1\tside\tleft\1\0\3\venable\2\vignore\2\ftimeout\3Ù\3\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\1\0\1\venable\1\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\a\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\2\nsetup\14nvim-tree\frequire\bgit\1\0\a\14untracked\bÔëÑ\fdeleted\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\nfiles\3\1\ffolders\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n¶\4\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\att\6n\bset\vkeymap\bvim\nsigns\1\0\5\nerror\bÔÅó\thint\tÔ¥û \16information\bÔÅö\fwarning\bÔÅ™\nother\bÔ´†\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\v\14auto_fold\1\17auto_preview\2\17indent_lines\2\nwidth\0032\rposition\vbottom\vheight\3\n\25use_diagnostic_signs\2\tmode\26workspace_diagnostics\14auto_open\1\nicons\2\15auto_close\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
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
