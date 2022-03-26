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
    config = { "\27LJ\2\n \2\0\0\3\0\15\0\0276\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\0\0009\0\1\0005\1\r\0005\2\f\0=\2\14\1=\1\v\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n˚\4\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\3\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\b\5=\5\t\4=\4\b\0035\4\v\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\f\5=\5\t\4=\4\f\0035\4\r\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\14\0035\4\15\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\16\0035\4\17\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\3\vlinehl\21GitSignsChangeLn\ahl\19GitSignsDelete\nnumhl\21GitSignsChangeNr\14topdelete\1\0\3\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\3\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\3\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\1\0\0\ttext\badd\tdiff\rmy_icons\6g\bvim\1\0\3\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0&indent_blankline_filetype_exclude\1\6\0\0\thelp\rstartify\vpacker\rNvimTree\vctrlsf\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\nÈ\r\0\0\t\0[\0È\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2-\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\0045\5#\0005\6\"\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6$\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6%\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5&\4=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0034\4\0\0=\4,\3=\3.\0025\0030\0005\4/\0=\0041\0034\4\3\0005\0052\0005\0064\0005\a3\0006\b\4\0009\b\5\b9\b\6\b9\b\30\b=\b\t\a=\a5\0065\a7\0006\b\4\0009\b\5\b9\b\6\b9\b6\b=\b\t\a=\a8\0065\a9\0006\b\4\0009\b\5\b9\b\6\b9\b\a\b=\b\t\a=\a:\0065\a;\0006\b\4\0009\b\5\b9\b\6\b9\b\15\b=\b\t\a=\a<\6=\6=\5>\5\1\4=\4>\0035\4D\0005\5?\0005\6B\0006\a\4\0009\a\5\a9\a@\a9\aA\a=\aA\6=\6C\5>\5\1\4=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0034\4\3\0005\5J\0005\6L\0005\aK\0006\b\4\0009\b\5\b9\b\6\b9\b\22\b=\b\t\a=\aM\0065\aN\0006\b\4\0009\b\5\b9\b\6\b9\b6\b=\b\t\a=\aA\0065\aO\0006\b\4\0009\b\5\b9\b\6\b9\b\30\b=\b\t\a=\aP\6=\6Q\5>\5\1\4=\4R\3=\3S\0025\3T\0004\4\0\0=\0041\0034\4\0\0=\4>\0035\4U\0=\4E\0035\4V\0=\4G\0034\4\0\0=\4I\0034\4\0\0=\4R\3=\3W\0024\3\0\0=\3X\0025\3Y\0=\3Z\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\15diff_color\fremoved\1\0\0\1\0\0\nadded\1\0\0\1\0\0\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmodified\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\rinactive\1\0\0\1\0\0\1\0\0\1\0\1\bgui\tbold\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vpurple\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\18icons_enabled\1\17globalstatus\2\25always_divide_middle\1\nsetup\flualine\frequire\0" },
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
    config = { "\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesõ\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\3\0009\3\4\1>\3\1\0029\3\5\1>\3\2\0029\3\6\0005\5\a\0=\2\b\0053\6\t\0=\6\n\5B\3\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nsetup\vstylua\rprettier\15formatting\rbuiltins\fnull-ls\frequire\0" },
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
    config = { "\27LJ\2\n€\t\0\2\t\1\"\0z9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\30document_range_formatting\24document_formatting\26resolved_capabilitiesé\t\1\0\15\0002\0y6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\30\0005\b\29\0=\b\31\aB\5\2\0016\5\22\0006\a\3\0009\a \a9\a!\a9\a\"\aB\5\2\4H\b\fÄ'\n#\0\18\v\b\0&\n\v\n6\v\3\0009\v$\v9\v%\v\18\r\n\0005\14&\0=\t'\14=\n(\14=\n)\14B\v\3\1F\b\3\3R\bÚ6\5\3\0009\5\16\0059\5*\0056\6\3\0009\6\16\0069\6,\0066\b\3\0009\b\16\b9\b*\b9\b-\b5\t.\0B\6\3\2=\6+\0056\5\3\0009\5\16\0059\5*\0056\6\3\0009\6\16\0069\6,\0066\b\3\0009\b\16\b9\b*\b9\b0\b5\t1\0B\6\3\2=\6/\0052\0\0ÄK\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\21update_in_insert\2\14underline\2\nsigns\2\18severity_sort\1\1\0\2\vprefix\6x\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n©\r\0\0\b\0=\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0005\2\b\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\f\0'\2\r\0B\0\2\0029\0\14\0005\2\15\0004\3\0\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0005\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\3=\3 \0025\3!\0=\3\v\0025\3\"\0005\4#\0004\5\0\0=\5$\4=\4%\3=\3&\0025\3'\0=\3(\0025\3*\0005\4)\0=\4+\0035\4,\0005\5-\0005\6/\0005\a.\0=\a0\0065\a1\0=\a2\6=\0063\5=\0054\4=\0045\3=\0036\2B\0\2\0016\0\0\0009\0007\0009\0008\0'\0029\0'\3:\0'\4;\0005\5<\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\17quit_on_open\2\18resize_window\1\15change_dir\1\0\0\1\0\2\venable\2\vglobal\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\31preserve_window_proportins\1\tside\tleft\21hide_root_folder\1\vnumber\1\15signcolumn\byes\19relativenumber\1\nwidth\3(\1\0\3\vignore\2\venable\2\ftimeout\3¨\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\18hijack_cursor\1\nsetup\14nvim-tree\frequire\bgit\1\0\a\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\runmerged\bÓúß\vfolder\1\0\2\topen\bÔÅ∏\fdefault\bÔÅî\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\0\bgit\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\28nvim_tree_special_files\29nvim_tree_indent_markers\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["rose-pine"] = {
    config = { "\27LJ\2\nƒ\4\0\0\6\0\30\0<6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0006\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\t\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\v\0036\4\4\0009\4\5\0049\4\6\0049\4\f\4=\4\r\0036\4\4\0009\4\5\0049\4\6\0049\4\14\4=\4\15\0036\4\4\0009\4\5\0049\4\6\0049\4\16\4=\4\17\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\18\0036\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\19\3=\3\20\2B\0\2\0016\0\4\0009\0\21\0'\2\22\0B\0\2\0016\0\4\0009\0\23\0009\0\24\0)\2\0\0'\3\25\0005\4\28\0006\5\4\0009\5\5\0059\5\26\0059\5\27\5=\5\29\4B\0\4\1K\0\1\0\afg\1\0\0\abg\17my_ui_colors\24IndentBlanklineChar\16nvim_set_hl\bapi\26colorscheme rose-pine\bcmd\vgroups\15git_delete\15git_change\fgit_add\ngreen\thint\nwhite\tinfo\tblue\twarn\vyellow\nerror\1\0\0\bred\14my_colors\6g\bvim\1\0\6\20disable_italics\1\29disable_float_background\1\23disable_background\2\22dim_nc_background\1\20bold_vert_split\1\17dark_variant\tmain\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n™\6\0\0\b\0!\0:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2:<cmd>lua require('telescope.builtin').live_grep()<CR>\15<leader>sp\1\0\2\vsilent\2\fnoremap\2<<cmd>lua require('telescope.builtin').grep_string()<CR>\15<leader>sd\1\0\2\vsilent\2\fnoremap\2N<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\2K<cmd>lua require('telescope.builtin').buffers({previewer = false})<CR>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ä\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vsingle\1\0\t\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\18close_on_exit\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n™\6\0\0\b\0!\0:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\27\0'\5\28\0005\6\29\0B\1\5\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0'\4\30\0'\5\31\0005\6 \0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2:<cmd>lua require('telescope.builtin').live_grep()<CR>\15<leader>sp\1\0\2\vsilent\2\fnoremap\2<<cmd>lua require('telescope.builtin').grep_string()<CR>\15<leader>sd\1\0\2\vsilent\2\fnoremap\2N<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\2K<cmd>lua require('telescope.builtin').buffers({previewer = false})<CR>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\bfzf\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ä\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vsingle\1\0\t\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\18close_on_exit\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\n \2\0\0\3\0\15\0\0276\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\0\0009\0\1\0005\1\r\0005\2\f\0=\2\14\1=\1\v\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\vsuffix\v<C-w>p\bkey\6O\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÈ\r\0\0\t\0[\0È\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2-\0005\3\3\0005\4\20\0005\5\r\0005\6\b\0006\a\4\0009\a\5\a9\a\6\a9\a\a\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6\16\0006\a\4\0009\a\5\a9\a\6\a9\a\15\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6\18\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5\21\0045\5\24\0005\6\23\0006\a\4\0009\a\5\a9\a\6\a9\a\22\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\25\0045\5\28\0005\6\27\0006\a\4\0009\a\5\a9\a\6\a9\a\26\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5\29\0045\5 \0005\6\31\0006\a\4\0009\a\5\a9\a\6\a9\a\30\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\5=\5!\0045\5#\0005\6\"\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\14\0055\6$\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\17\0055\6%\0006\a\4\0009\a\5\a9\a\6\a9\a\t\a=\a\t\0066\a\4\0009\a\5\a9\a\n\a9\a\v\a=\a\f\6=\6\19\5=\5&\4=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0034\4\0\0=\4,\3=\3.\0025\0030\0005\4/\0=\0041\0034\4\3\0005\0052\0005\0064\0005\a3\0006\b\4\0009\b\5\b9\b\6\b9\b\30\b=\b\t\a=\a5\0065\a7\0006\b\4\0009\b\5\b9\b\6\b9\b6\b=\b\t\a=\a8\0065\a9\0006\b\4\0009\b\5\b9\b\6\b9\b\a\b=\b\t\a=\a:\0065\a;\0006\b\4\0009\b\5\b9\b\6\b9\b\15\b=\b\t\a=\a<\6=\6=\5>\5\1\4=\4>\0035\4D\0005\5?\0005\6B\0006\a\4\0009\a\5\a9\a@\a9\aA\a=\aA\6=\6C\5>\5\1\4=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0034\4\3\0005\5J\0005\6L\0005\aK\0006\b\4\0009\b\5\b9\b\6\b9\b\22\b=\b\t\a=\aM\0065\aN\0006\b\4\0009\b\5\b9\b\6\b9\b6\b=\b\t\a=\aA\0065\aO\0006\b\4\0009\b\5\b9\b\6\b9\b\30\b=\b\t\a=\aP\6=\6Q\5>\5\1\4=\4R\3=\3S\0025\3T\0004\4\0\0=\0041\0034\4\0\0=\4>\0035\4U\0=\4E\0035\4V\0=\4G\0034\4\0\0=\4I\0034\4\0\0=\4R\3=\3W\0024\3\0\0=\3X\0025\3Y\0=\3Z\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\15diff_color\fremoved\1\0\0\1\0\0\nadded\1\0\0\1\0\0\1\2\0\0\tdiff\14lualine_y\1\2\0\0\vbranch\14lualine_x\1\3\0\0\rencoding\15fileformat\14lualine_c\1\4\0\0\0\rlocation\rprogress\fsymbols\1\0\0\rmodified\rmy_icons\1\2\1\0\rfilename\16file_status\2\14lualine_b\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\1\2\0\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\ntheme\rinactive\1\0\0\1\0\0\1\0\0\1\0\1\bgui\tbold\freplace\1\0\0\1\0\1\bgui\tbold\bred\vvisual\1\0\0\1\0\1\bgui\tbold\vpurple\vinsert\1\0\0\1\0\1\bgui\tbold\ngreen\vnormal\1\0\0\6c\1\0\0\6b\1\0\1\bgui\tbold\nwhite\6a\1\0\0\abg\vbg_alt\17my_ui_colors\afg\1\0\1\bgui\tbold\tblue\14my_colors\6g\bvim\1\0\3\18icons_enabled\1\17globalstatus\2\25always_divide_middle\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\nƒ\4\0\0\6\0\30\0<6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\b\0006\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\t\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\v\0036\4\4\0009\4\5\0049\4\6\0049\4\f\4=\4\r\0036\4\4\0009\4\5\0049\4\6\0049\4\14\4=\4\15\0036\4\4\0009\4\5\0049\4\6\0049\4\16\4=\4\17\0036\4\4\0009\4\5\0049\4\6\0049\4\n\4=\4\18\0036\4\4\0009\4\5\0049\4\6\0049\4\a\4=\4\19\3=\3\20\2B\0\2\0016\0\4\0009\0\21\0'\2\22\0B\0\2\0016\0\4\0009\0\23\0009\0\24\0)\2\0\0'\3\25\0005\4\28\0006\5\4\0009\5\5\0059\5\26\0059\5\27\5=\5\29\4B\0\4\1K\0\1\0\afg\1\0\0\abg\17my_ui_colors\24IndentBlanklineChar\16nvim_set_hl\bapi\26colorscheme rose-pine\bcmd\vgroups\15git_delete\15git_change\fgit_add\ngreen\thint\nwhite\tinfo\tblue\twarn\vyellow\nerror\1\0\0\bred\14my_colors\6g\bvim\1\0\6\20disable_italics\1\29disable_float_background\1\23disable_background\2\22dim_nc_background\1\20bold_vert_split\1\17dark_variant\tmain\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n˚\4\0\0\6\0\21\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\19\0005\3\n\0005\4\3\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\b\5=\5\t\4=\4\b\0035\4\v\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\f\5=\5\t\4=\4\f\0035\4\r\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\14\0035\4\15\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\16\0035\4\17\0006\5\4\0009\5\5\0059\5\6\0059\5\a\0059\5\14\5=\5\t\4=\4\18\3=\3\20\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\3\vlinehl\21GitSignsChangeLn\ahl\19GitSignsDelete\nnumhl\21GitSignsChangeNr\14topdelete\1\0\3\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\3\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\3\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\1\0\0\ttext\badd\tdiff\rmy_icons\6g\bvim\1\0\3\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n©\r\0\0\b\0=\0O6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0005\2\b\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\f\0'\2\r\0B\0\2\0029\0\14\0005\2\15\0004\3\0\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0005\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\3=\3 \0025\3!\0=\3\v\0025\3\"\0005\4#\0004\5\0\0=\5$\4=\4%\3=\3&\0025\3'\0=\3(\0025\3*\0005\4)\0=\4+\0035\4,\0005\5-\0005\6/\0005\a.\0=\a0\0065\a1\0=\a2\6=\0063\5=\0054\4=\0045\3=\0036\2B\0\2\0016\0\0\0009\0007\0009\0008\0'\0029\0'\3:\0'\4;\0005\5<\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\17quit_on_open\2\18resize_window\1\15change_dir\1\0\0\1\0\2\venable\2\vglobal\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\31preserve_window_proportins\1\tside\tleft\21hide_root_folder\1\vnumber\1\15signcolumn\byes\19relativenumber\1\nwidth\3(\1\0\3\vignore\2\venable\2\ftimeout\3¨\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\18hijack_cursor\1\nsetup\14nvim-tree\frequire\bgit\1\0\a\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\runmerged\bÓúß\vfolder\1\0\2\topen\bÔÅ∏\fdefault\bÔÅî\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\0\bgit\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\28nvim_tree_special_files\29nvim_tree_indent_markers\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n€\t\0\2\t\1\"\0z9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0026\2\3\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\3\0009\2\4\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0-\b\0\0B\2\6\1K\0\1\0\1¿*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\30document_range_formatting\24document_formatting\26resolved_capabilitiesé\t\1\0\15\0002\0y6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0013\2\15\0006\3\3\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0026\4\0\0'\6\19\0B\4\2\0029\4\20\4\18\6\3\0B\4\2\2\18\3\4\0005\4\21\0006\5\22\0\18\a\4\0B\5\2\4H\b\tÄ6\n\0\0'\f\1\0B\n\2\0028\n\t\n9\n\23\n5\f\24\0=\2\25\f=\3\26\fB\n\2\1F\b\3\3R\bı6\5\3\0009\5\27\0059\5\28\0055\a\30\0005\b\29\0=\b\31\aB\5\2\0016\5\22\0006\a\3\0009\a \a9\a!\a9\a\"\aB\5\2\4H\b\fÄ'\n#\0\18\v\b\0&\n\v\n6\v\3\0009\v$\v9\v%\v\18\r\n\0005\14&\0=\t'\14=\n(\14=\n)\14B\v\3\1F\b\3\3R\bÚ6\5\3\0009\5\16\0059\5*\0056\6\3\0009\6\16\0069\6,\0066\b\3\0009\b\16\b9\b*\b9\b-\b5\t.\0B\6\3\2=\6+\0056\5\3\0009\5\16\0059\5*\0056\6\3\0009\6\16\0069\6,\0066\b\3\0009\b\16\b9\b*\b9\b0\b5\t1\0B\6\3\2=\6/\0052\0\0ÄK\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\nsigns\rmy_icons\6g\17virtual_text\1\0\4\21update_in_insert\2\14underline\2\nsigns\2\18severity_sort\1\1\0\2\vprefix\6x\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\npairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\0-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0&indent_blankline_filetype_exclude\1\6\0\0\thelp\rstartify\vpacker\rNvimTree\vctrlsf\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n™\2\0\1\4\0\5\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä6\1\2\0009\1\3\1'\3\4\0B\1\2\1K\0\1\0–\1                augroup LspFormatting\n                    autocmd! * <buffer>\n                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n                augroup END\n              \bcmd\bvim\24document_formatting\26resolved_capabilitiesõ\1\1\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\3\0009\3\4\1>\3\1\0029\3\5\1>\3\2\0029\3\6\0005\5\a\0=\2\b\0053\6\t\0=\6\n\5B\3\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nsetup\vstylua\rprettier\15formatting\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible\v\0\2\2\0\0\0\1L\1\2\0„\b\1\0\r\0D\0Ç\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\0016\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0029\4\n\0035\6\14\0005\a\f\0003\b\v\0=\b\r\a=\a\15\0065\a\18\0009\b\16\0039\b\17\bB\b\1\2=\b\19\a9\b\16\0039\b\20\bB\b\1\2=\b\21\a9\b\16\0039\n\16\0039\n\22\n)\f¸ˇB\n\2\0025\v\23\0B\b\3\2=\b\24\a9\b\16\0039\n\16\0039\n\22\n)\f\4\0B\n\2\0025\v\25\0B\b\3\2=\b\26\a9\b\16\0039\n\16\0039\n\27\nB\n\1\0025\v\28\0B\b\3\2=\b\29\a9\b\16\0039\b\30\bB\b\1\2=\b\31\a9\b\16\0039\b \b5\n#\0009\v!\0039\v\"\v=\v$\nB\b\2\2=\b%\a9\b\16\0033\n&\0005\v'\0B\b\3\2=\b(\a9\b\16\0033\n)\0005\v*\0B\b\3\2=\b+\a=\a\16\0065\a-\0005\b,\0=\b.\a=\a/\0069\a0\0039\a1\a4\t\3\0005\n2\0>\n\1\t5\n3\0>\n\2\t4\n\3\0005\v4\0>\v\1\nB\a\3\2=\a1\0065\a9\0009\b5\0005\n6\0003\v7\0=\v8\nB\b\2\2=\b:\a=\a;\6B\4\2\0019\4\n\0039\4<\4'\6=\0005\a?\0004\b\3\0005\t>\0>\t\1\b=\b1\aB\4\3\0019\4\n\0039\4<\4'\6@\0005\aC\0009\b0\0039\b1\b4\n\3\0005\vA\0>\v\1\n4\v\3\0005\fB\0>\f\1\vB\b\3\2=\b1\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\18documentation\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\npaths\1\0\0\1\2\0\0\19./lua/snippets\tload\"luasnip.loaders.from_snipmate\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
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
