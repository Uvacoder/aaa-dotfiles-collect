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
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
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
    config = { "\27LJ\2\në\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsDelete\14topdelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚îÉ\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÈ\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\b‚îÇ\nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31é\r\1\0\f\0^\0µ\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0034\4\0\0=\4 \0035\4!\0=\4\"\0033\4#\0003\5$\0\18\6\4\0005\b%\0005\t&\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t'\b5\t(\0=\t)\bB\6\2\1\18\6\4\0005\b*\0005\t+\0=\t,\b5\t-\0=\t.\b5\t1\0005\n0\0009\v/\1=\v\v\n=\n2\t5\n4\0009\v3\1=\v\v\n=\n5\t5\n7\0009\v6\1=\v\v\n=\n8\t5\n9\0009\v\v\1=\v\v\n=\n:\t=\t;\b5\t<\0=\t)\bB\6\2\1\18\6\4\0005\b=\0009\t\5\2=\t>\b5\t@\0009\n?\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0005\bA\0B\6\2\1\18\6\4\0005\bB\0005\tC\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0004\b\3\0003\tD\0>\t\1\bB\6\2\1\18\6\4\0005\bE\0005\tF\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0005\bI\0003\tG\0>\t\1\b5\tH\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bJ\0005\tK\0=\t)\b5\tL\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bM\0009\t\a\2=\t>\b5\tN\0=\t)\b5\tO\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bP\0005\tQ\0=\t'\bB\6\2\1\18\6\5\0005\bR\0005\tS\0=\t.\b5\tV\0005\nU\0009\vT\1=\v\v\n=\nW\t5\nX\0009\v3\1=\v\v\n=\nY\t5\nZ\0009\v/\1=\v\v\n=\n[\t=\t\\\b9\t\a\2=\t>\bB\6\2\0019\6]\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\0\3\fremoved\tÔÖÜ \rmodified\tÔÖã \nadded\tÔÉæ \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\1\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsymbols\1\0\4\tinfo\tÔÅö \twarn\tÔÅ™ \thint\tÔ¥û \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\fpadding\1\0\2\tleft\3\1\nright\3\2\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\25component_separators\5\18icons_enabled\1\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\afg\f#6272A4\abg\f#090B10\vyellow\f#FBFF00\bred\f#ff0000\ngreen\f#00FF5F\nwhite\f#ffffff\tblue\f#0087FF\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n…\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#000000\tfill\1\0\1\nguibg\f#000000\15background\1\0\1\nguibg\f#000000\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\27always_show_bufferline\1\20max_name_length\3\22\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\2¿\tbody\15lsp_expandÿ\t\1\0\f\0D\0y6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0023\1\6\0006\2\4\0'\4\a\0B\2\2\0026\3\4\0'\5\b\0B\3\2\0029\4\t\0035\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\17\0009\b\15\0039\b\16\bB\b\1\2=\b\18\a9\b\15\0039\b\19\bB\b\1\2=\b\20\a9\b\15\0039\b\21\b)\n¸ˇB\b\2\2=\b\22\a9\b\15\0039\b\21\b)\n\4\0B\b\2\2=\b\23\a9\b\15\0039\b\24\bB\b\1\2=\b\25\a9\b\15\0039\b\26\bB\b\1\2=\b\27\a9\b\15\0039\b\28\b5\n\31\0009\v\29\0039\v\30\v=\v \nB\b\2\2=\b!\a3\b\"\0=\b#\a3\b$\0=\b%\a=\a\15\0064\a\b\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\a5\b)\0>\b\4\a5\b*\0>\b\5\a5\b+\0005\t,\0=\t-\b>\b\6\a5\b.\0>\b\a\a=\a/\0065\a1\0003\b0\0=\b\f\a=\a\14\0065\a6\0009\b2\0005\n3\0005\v4\0=\v5\nB\b\2\2=\b7\a=\a8\0065\a9\0=\a:\6B\4\2\0019\4\t\0039\4;\4'\6<\0005\a?\0009\b=\0039\b/\b4\n\3\0005\v>\0>\v\1\nB\b\2\2=\b/\aB\4\3\0019\4\t\0039\4;\4'\6@\0005\aC\0009\b=\0039\b/\b4\n\3\0005\vA\0>\v\1\n5\vB\0>\v\2\nB\b\2\2=\b/\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\3\19max_item_count\3\20\tname\fcmdline\19keyword_length\3\3\1\0\1\tname\tpath\6:\1\0\0\1\0\2\tname\vbuffer\19keyword_length\3\3\vconfig\6/\fcmdline\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\a\fluasnip\v[snip]\rnvim_lua\n[lua]\tlook\v[look]\tpath\v[path]\tcalc\v[calc]\vbuffer\n[buf]\rnvim_lsp\n[LSP]\1\0\1\14with_text\1\15cmp_format\1\0\0\0\fsources\1\0\1\tname\tcalc\voption\1\0\2\tloud\2\17convert_case\2\1\0\2\tname\tlook\19keyword_length\3\2\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\0\flspkind\frequire\21menuone,noselect\16completeopt\6o\bvim\0" },
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
    config = { "\27LJ\2\nX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÚ\t\0\2\t\1 \0z6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\30\2'\4\31\0B\2\2\1K\0\1\0\0¿= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim±\5\1\0\16\0!\0A5\0\0\0006\1\1\0'\3\2\0B\1\2\0023\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0026\4\1\0'\6\b\0B\4\2\0029\4\t\4\18\6\3\0B\4\2\2\18\3\4\0005\4\n\0006\5\v\0\18\a\4\0B\5\2\4X\b\6Ä8\n\t\0019\n\f\n5\f\r\0=\2\14\f=\3\15\fB\n\2\1E\b\3\3R\b¯6\5\4\0009\5\16\0059\5\17\0055\a\19\0005\b\18\0=\b\20\a5\b\21\0=\b\22\aB\5\2\0016\5\4\0009\5\16\0059\5\17\0055\a\23\0B\5\2\0015\5\24\0006\6\25\0\18\b\5\0B\6\2\4H\t\fÄ'\v\26\0\18\f\t\0&\v\f\v6\f\4\0009\f\27\f9\f\28\f\18\14\v\0005\15\29\0=\n\30\15=\v\31\15=\v \15B\f\3\1F\t\3\3R\tÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\bÔÅ™\nError\bÔÅó\tHint\bÔ¥û\tInfo\bÔÅö\1\0\5\17virtual_text\2\18severity_sort\1\21update_in_insert\2\14underline\2\nsigns\2\nfloat\1\0\1\vsource\valways\17virtual_text\1\0\0\1\0\2\vprefix\b‚óè\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÆ\a\0\0\6\0$\00096\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1,\1=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\1=\1\14\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0005\3\22\0=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\0016\0\0\0009\0\30\0009\0\31\0'\2 \0'\3!\0'\4\"\0005\5#\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\nwidth\b40%\16auto_resize\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\bgit\1\0\a\runmerged\bÓúß\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\1\0\4\ffolders\3\1\18folder_arrows\3\0\nfiles\3\1\bgit\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\venable\2\14set_jumps\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
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
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÅ\6\0\0\b\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\"\0'\5#\0005\6$\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\vsilent\2\fnoremap\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\vsilent\2\fnoremap\2\29:Telescope live_grep<cr>\afg\1\0\2\vsilent\2\fnoremap\2\31:Telescope grep_string<cr>\afs\1\0\2\vsilent\2\fnoremap\2\30:Telescope find_files<cr>\aff\1\0\2\vsilent\2\fnoremap\2\27:Telescope buffers<cr>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ë\2\1\0\4\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\0016\0\a\0003\1\t\0=\1\b\0006\0\4\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\1\0\n\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\v\14direction\15horizontal\18close_on_exit\2\17persist_size\1\20insert_mappings\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyodark.nvim"] = {
    config = { "\27LJ\2\næ\b\0\0\6\0)\0|6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\0026\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\17\0005\5\18\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\19\0005\5\20\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\21\0005\5\22\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\23\0005\5\24\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\25\0005\5\26\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\27\0005\5\28\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\29\0005\5\30\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\31\0005\5 \0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4!\0005\5\"\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4#\0005\5$\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4%\0005\5&\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4'\0005\5(\0B\1\4\1K\0\1\0\1\0\1\afg\f#121212\24IndentBlanklineChar\1\0\1\afg\f#FF0000\24DiagnosticSignError\1\0\1\afg\f#FBFF00\23DiagnosticSignWarn\1\0\1\afg\f#0087FF\23DiagnosticSignInfo\1\0\1\afg\f#A400FF\23DiagnosticSignHint\1\0\1\afg\f#FF0000\19GitSignsDelete\1\0\1\afg\f#FBFF00\19GitSignsChange\1\0\1\afg\f#00FF5F\16GitSignsAdd\1\0\1\afg\f#FFD773\nTitle\1\0\1\afg\f#FFD773\14Character\1\0\1\afg\f#FFD773\vString\1\0\1\abg\f#000000\15SignColumn\1\0\1\abg\f#000000\16EndOfBuffer\1\0\1\abg\f#000000\vNormal\16nvim_set_hl\14tokyodark\26nvim_create_namespace\bapi\26colorscheme tokyodark\bcmd\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nØ\4\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\27<cmd>TroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\nsigns\1\0\5\fwarning\bÔÅ™\nother\bÔ´†\thint\tÔ¥û \16information\bÔÅö\nerror\bÔÅó\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\nclose\6q\frefresh\6r\1\0\v\nwidth\0032\tmode\26workspace_diagnostics\25use_diagnostic_signs\2\14auto_fold\1\17auto_preview\2\14auto_open\1\17indent_lines\2\15auto_close\2\vheight\3\n\rposition\vbottom\nicons\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÆ\a\0\0\6\0$\00096\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1,\1=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\1=\1\14\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0005\3\22\0=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\0016\0\0\0009\0\30\0009\0\31\0'\2 \0'\3!\0'\4\"\0005\5#\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\nwidth\b40%\16auto_resize\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\bgit\1\0\a\runmerged\bÓúß\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\1\0\2\fsymlink\tÔíÅ \fdefault\tÓòí \20nvim_tree_icons\1\0\4\ffolders\3\1\18folder_arrows\3\0\nfiles\3\1\bgit\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=å\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5˛ˇˇˇ\31é\r\1\0\f\0^\0µ\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0034\4\0\0=\4 \0035\4!\0=\4\"\0033\4#\0003\5$\0\18\6\4\0005\b%\0005\t&\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t'\b5\t(\0=\t)\bB\6\2\1\18\6\4\0005\b*\0005\t+\0=\t,\b5\t-\0=\t.\b5\t1\0005\n0\0009\v/\1=\v\v\n=\n2\t5\n4\0009\v3\1=\v\v\n=\n5\t5\n7\0009\v6\1=\v\v\n=\n8\t5\n9\0009\v\v\1=\v\v\n=\n:\t=\t;\b5\t<\0=\t)\bB\6\2\1\18\6\4\0005\b=\0009\t\5\2=\t>\b5\t@\0009\n?\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0005\bA\0B\6\2\1\18\6\4\0005\bB\0005\tC\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0004\b\3\0003\tD\0>\t\1\bB\6\2\1\18\6\4\0005\bE\0005\tF\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\4\0005\bI\0003\tG\0>\t\1\b5\tH\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bJ\0005\tK\0=\t)\b5\tL\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bM\0009\t\a\2=\t>\b5\tN\0=\t)\b5\tO\0009\n\v\1=\n\v\t=\t'\bB\6\2\1\18\6\5\0005\bP\0005\tQ\0=\t'\bB\6\2\1\18\6\5\0005\bR\0005\tS\0=\t.\b5\tV\0005\nU\0009\vT\1=\v\v\n=\nW\t5\nX\0009\v3\1=\v\v\n=\nY\t5\nZ\0009\v/\1=\v\v\n=\n[\t=\t\\\b9\t\a\2=\t>\bB\6\2\0019\6]\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\0\3\fremoved\tÔÖÜ \rmodified\tÔÖã \nadded\tÔÉæ \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\1\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsymbols\1\0\4\tinfo\tÔÅö \twarn\tÔÅ™ \thint\tÔ¥û \nerror\tÔÅó \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\fpadding\1\0\2\tleft\3\1\nright\3\2\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\25component_separators\5\18icons_enabled\1\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\afg\f#6272A4\abg\f#090B10\vyellow\f#FBFF00\bred\f#ff0000\ngreen\f#00FF5F\nwhite\f#ffffff\tblue\f#0087FF\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\venable\2\14set_jumps\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÑ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2Ë\2\1\0\4\0\f\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\0016\0\a\0003\1\t\0=\1\b\0006\0\4\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\1\0\n\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\v\14direction\15horizontal\18close_on_exit\2\17persist_size\1\20insert_mappings\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: tokyodark.nvim
time([[Config for tokyodark.nvim]], true)
try_loadstring("\27LJ\2\næ\b\0\0\6\0)\0|6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0B\0\2\0026\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\17\0005\5\18\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\19\0005\5\20\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\21\0005\5\22\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\23\0005\5\24\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\25\0005\5\26\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\27\0005\5\28\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\29\0005\5\30\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4\31\0005\5 \0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4!\0005\5\"\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4#\0005\5$\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4%\0005\5&\0B\1\4\0016\1\0\0009\1\t\0019\1\f\1\18\3\0\0'\4'\0005\5(\0B\1\4\1K\0\1\0\1\0\1\afg\f#121212\24IndentBlanklineChar\1\0\1\afg\f#FF0000\24DiagnosticSignError\1\0\1\afg\f#FBFF00\23DiagnosticSignWarn\1\0\1\afg\f#0087FF\23DiagnosticSignInfo\1\0\1\afg\f#A400FF\23DiagnosticSignHint\1\0\1\afg\f#FF0000\19GitSignsDelete\1\0\1\afg\f#FBFF00\19GitSignsChange\1\0\1\afg\f#00FF5F\16GitSignsAdd\1\0\1\afg\f#FFD773\nTitle\1\0\1\afg\f#FFD773\14Character\1\0\1\afg\f#FFD773\vString\1\0\1\abg\f#000000\15SignColumn\1\0\1\abg\f#000000\16EndOfBuffer\1\0\1\abg\f#000000\vNormal\16nvim_set_hl\14tokyodark\26nvim_create_namespace\bapi\26colorscheme tokyodark\bcmd\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0", "config", "tokyodark.nvim")
time([[Config for tokyodark.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\2¿\tjump\rjumpable\21select_prev_item\fvisible-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\2¿\tbody\15lsp_expandÿ\t\1\0\f\0D\0y6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0023\1\6\0006\2\4\0'\4\a\0B\2\2\0026\3\4\0'\5\b\0B\3\2\0029\4\t\0035\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\17\0009\b\15\0039\b\16\bB\b\1\2=\b\18\a9\b\15\0039\b\19\bB\b\1\2=\b\20\a9\b\15\0039\b\21\b)\n¸ˇB\b\2\2=\b\22\a9\b\15\0039\b\21\b)\n\4\0B\b\2\2=\b\23\a9\b\15\0039\b\24\bB\b\1\2=\b\25\a9\b\15\0039\b\26\bB\b\1\2=\b\27\a9\b\15\0039\b\28\b5\n\31\0009\v\29\0039\v\30\v=\v \nB\b\2\2=\b!\a3\b\"\0=\b#\a3\b$\0=\b%\a=\a\15\0064\a\b\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\a5\b)\0>\b\4\a5\b*\0>\b\5\a5\b+\0005\t,\0=\t-\b>\b\6\a5\b.\0>\b\a\a=\a/\0065\a1\0003\b0\0=\b\f\a=\a\14\0065\a6\0009\b2\0005\n3\0005\v4\0=\v5\nB\b\2\2=\b7\a=\a8\0065\a9\0=\a:\6B\4\2\0019\4\t\0039\4;\4'\6<\0005\a?\0009\b=\0039\b/\b4\n\3\0005\v>\0>\v\1\nB\b\2\2=\b/\aB\4\3\0019\4\t\0039\4;\4'\6@\0005\aC\0009\b=\0039\b/\b4\n\3\0005\vA\0>\v\1\n5\vB\0>\v\2\nB\b\2\2=\b/\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\3\19max_item_count\3\20\tname\fcmdline\19keyword_length\3\3\1\0\1\tname\tpath\6:\1\0\0\1\0\2\tname\vbuffer\19keyword_length\3\3\vconfig\6/\fcmdline\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\a\fluasnip\v[snip]\rnvim_lua\n[lua]\tlook\v[look]\tpath\v[path]\tcalc\v[calc]\vbuffer\n[buf]\rnvim_lsp\n[LSP]\1\0\1\14with_text\1\15cmp_format\1\0\0\0\fsources\1\0\1\tname\tcalc\voption\1\0\2\tloud\2\17convert_case\2\1\0\2\tname\tlook\19keyword_length\3\2\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\0\flspkind\frequire\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nØ\4\0\0\6\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\27<cmd>TroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\nsigns\1\0\5\fwarning\bÔÅ™\nother\bÔ´†\thint\tÔ¥û \16information\bÔÅö\nerror\bÔÅó\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\nclose\6q\frefresh\6r\1\0\v\nwidth\0032\tmode\26workspace_diagnostics\25use_diagnostic_signs\2\14auto_fold\1\17auto_preview\2\14auto_open\1\17indent_lines\2\15auto_close\2\vheight\3\n\rposition\vbottom\nicons\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\në\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tnext\6n\tprev\6N\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3Ë\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\bexe\vstylua\nstdin\1È\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÈ\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\b‚îÇ\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsDelete\14topdelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚îÉ\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n…\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#000000\tfill\1\0\1\nguibg\f#000000\15background\1\0\1\nguibg\f#000000\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\27always_show_bufferline\1\20max_name_length\3\22\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÅ\6\0\0\b\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\"\0'\5#\0005\6$\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\vsilent\2\fnoremap\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\vsilent\2\fnoremap\2\29:Telescope live_grep<cr>\afg\1\0\2\vsilent\2\fnoremap\2\31:Telescope grep_string<cr>\afs\1\0\2\vsilent\2\fnoremap\2\30:Telescope find_files<cr>\aff\1\0\2\vsilent\2\fnoremap\2\27:Telescope buffers<cr>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÚ\t\0\2\t\1 \0z6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\30\2'\4\31\0B\2\2\1K\0\1\0\0¿= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim±\5\1\0\16\0!\0A5\0\0\0006\1\1\0'\3\2\0B\1\2\0023\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0026\4\1\0'\6\b\0B\4\2\0029\4\t\4\18\6\3\0B\4\2\2\18\3\4\0005\4\n\0006\5\v\0\18\a\4\0B\5\2\4X\b\6Ä8\n\t\0019\n\f\n5\f\r\0=\2\14\f=\3\15\fB\n\2\1E\b\3\3R\b¯6\5\4\0009\5\16\0059\5\17\0055\a\19\0005\b\18\0=\b\20\a5\b\21\0=\b\22\aB\5\2\0016\5\4\0009\5\16\0059\5\17\0055\a\23\0B\5\2\0015\5\24\0006\6\25\0\18\b\5\0B\6\2\4H\t\fÄ'\v\26\0\18\f\t\0&\v\f\v6\f\4\0009\f\27\f9\f\28\f\18\14\v\0005\15\29\0=\n\30\15=\v\31\15=\v \15B\f\3\1F\t\3\3R\tÚ2\0\0ÄK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\bÔÅ™\nError\bÔÅó\tHint\bÔ¥û\tInfo\bÔÅö\1\0\5\17virtual_text\2\18severity_sort\1\21update_in_insert\2\14underline\2\nsigns\2\nfloat\1\0\1\vsource\valways\17virtual_text\1\0\0\1\0\2\vprefix\b‚óè\vsource\valways\vconfig\15diagnostic\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
