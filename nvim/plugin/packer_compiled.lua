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
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\nstdin\1\bexe\vstyluaÈ\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nØ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ahl\20GitGutterChange\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\b‚Äæ\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\6~\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\6+\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n‡\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile&indent_blankline_filetype_exclude\1\3\0\0\thelp\vpacker\1\0\4\25space_char_blankline\6 \31show_current_context_start\1\25show_current_context\2\tchar\b‚îä\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ç\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\6-˛ˇˇˇ\31£\f\1\0\f\0Z\0∏\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5!\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\"\0035\4#\0=\4$\0033\4%\0003\5&\0\18\6\4\0005\b'\0005\t(\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t)\b5\t*\0=\t+\bB\6\2\1\18\6\4\0005\b,\0009\t\5\2=\t-\b5\t/\0009\n.\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b0\0B\6\2\1\18\6\4\0005\b1\0005\t2\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b3\0005\t4\0=\t5\b5\t8\0005\n7\0009\v6\1=\v\v\n=\n9\t5\n;\0009\v:\1=\v\v\n=\n<\t5\n>\0009\v=\1=\v\v\n=\n?\t5\n@\0009\v\v\1=\v\v\n=\n?\t=\tA\b5\tB\0=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tC\0>\t\1\bB\6\2\1\18\6\4\0005\bF\0003\tD\0>\t\1\b5\tE\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bG\0005\tH\0=\t+\b5\tI\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bJ\0009\t\a\2=\t-\b5\tK\0=\t+\b5\tL\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bM\0005\tN\0=\t)\bB\6\2\1\18\6\5\0005\bO\0005\tR\0005\nQ\0009\vP\1=\v\v\n=\nS\t5\nT\0009\v:\1=\v\v\n=\nU\t5\nV\0009\v6\1=\v\v\n=\nW\t=\tX\b9\t\a\2=\t-\bB\6\2\0019\6Y\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\0\1\0\1\tleft\3\1\22diagnostics_color\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\fpadding\1\0\2\nright\3\2\tleft\3\1\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\25component_separators\5\18icons_enabled\1\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\ngreen\f#00FF5F\bred\f#D70000\tblue\f#0087FF\nwhite\f#ffffff\afg\f#757575\vyellow\f#F6C177\abg\f#000000\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  neovim = {
    config = { "\27LJ\2\n∏\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n◊\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\2\nguifg\f#FFD14E\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleë\6\1\0\f\0002\0`6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0029\3\b\0025\5\f\0005\6\n\0003\a\t\0=\a\v\6=\6\r\0055\6\16\0009\a\14\0029\a\15\aB\a\1\2=\a\17\0069\a\14\0029\a\18\aB\a\1\2=\a\19\0069\a\14\0029\a\20\a)\t¸ˇB\a\2\2=\a\21\0069\a\14\0029\a\20\a)\t\4\0B\a\2\2=\a\22\0069\a\14\0029\a\23\aB\a\1\2=\a\24\0069\a\14\0029\a\25\aB\a\1\2=\a\26\0069\a\14\0029\a\27\a5\t\30\0009\n\28\0029\n\29\n=\n\31\tB\a\2\2=\a \0063\a!\0=\a\"\0063\a#\0=\a$\6=\6\14\0059\6%\0029\6&\0064\b\3\0005\t'\0>\t\1\b5\t(\0>\t\2\b4\t\3\0005\n)\0>\n\1\tB\6\3\2=\6&\5B\3\2\0019\3\b\0029\3*\3'\5+\0005\6-\0004\a\3\0005\b,\0>\b\1\a=\a&\6B\3\3\0019\3\b\0029\3*\3'\5.\0005\0061\0009\a%\0029\a&\a4\t\3\0005\n/\0>\n\1\t4\n\3\0005\v0\0>\v\1\nB\a\3\2=\a&\6B\3\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
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
    config = { "\27LJ\2\n•\r\0\2\n\0,\0¶\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0006\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0'\b\t\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\f\0'\b\r\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\26\0'\b\27\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\28\0'\b\29\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\30\0'\b\31\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a \0'\b!\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\"\0'\b#\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a$\0'\b%\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a&\0'\b'\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a(\0'\b)\0\18\t\2\0B\3\6\0016\3\0\0009\3*\3'\5+\0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so-<cmd>lua vim.diagnostic.setloclist()<CR>\14<leader>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\14<leader>e+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim¶\3\1\0\r\0\19\0&6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0023\1\5\0006\2\6\0009\2\a\0029\2\b\0029\2\t\2B\2\1\0026\3\0\0'\5\n\0B\3\2\0029\3\v\3\18\5\2\0B\3\2\2\18\2\3\0005\3\f\0006\4\r\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\2\t5\v\14\0=\1\15\v=\2\16\v5\f\17\0=\f\18\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\1\0\4\nError\f#db4b4b\16Information\f#0db9d7\fWarning\f#e0af68\tHint\f#10B981\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n´\b\0\0\6\0&\0;6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1,\1=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\0015\2\18\0=\2\19\1=\1\14\0006\0\20\0'\2\21\0B\0\2\0029\0\22\0005\2\23\0005\3\24\0=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0025\3\30\0=\3\31\2B\0\2\0016\0\0\0009\0 \0009\0!\0'\2\"\0'\3#\0'\4$\0005\5%\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\16auto_resize\2\nwidth\b40%\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\17arrow_closed\bÔë†\topen\bÔëº\15arrow_open\bÔëº\nempty\bÔë†\fdefault\bÔë†\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\bgit\1\0\a\14untracked\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\ffolders\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\nÅ\6\0\0\b\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\"\0'\5#\0005\6$\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n·\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\vcancel\n<esc>\frefresh\6r\1\0\v\vheight\3\n\nicons\1\tmode\26workspace_diagnostics\rposition\vbottom\nwidth\0032\15auto_close\2\25use_diagnostic_signs\2\14auto_fold\1\17auto_preview\2\14auto_open\1\17indent_lines\2\nsetup\ftrouble\frequire\0" },
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
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nØ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ahl\20GitGutterChange\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\b‚Äæ\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\6~\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\6+\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n‡\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile&indent_blankline_filetype_exclude\1\3\0\0\thelp\vpacker\1\0\4\25space_char_blankline\6 \31show_current_context_start\1\25show_current_context\2\tchar\b‚îä\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n◊\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\2\nguifg\f#FFD14E\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ç\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\6-˛ˇˇˇ\31£\f\1\0\f\0Z\0∏\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5!\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\"\0035\4#\0=\4$\0033\4%\0003\5&\0\18\6\4\0005\b'\0005\t(\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t)\b5\t*\0=\t+\bB\6\2\1\18\6\4\0005\b,\0009\t\5\2=\t-\b5\t/\0009\n.\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b0\0B\6\2\1\18\6\4\0005\b1\0005\t2\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b3\0005\t4\0=\t5\b5\t8\0005\n7\0009\v6\1=\v\v\n=\n9\t5\n;\0009\v:\1=\v\v\n=\n<\t5\n>\0009\v=\1=\v\v\n=\n?\t5\n@\0009\v\v\1=\v\v\n=\n?\t=\tA\b5\tB\0=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tC\0>\t\1\bB\6\2\1\18\6\4\0005\bF\0003\tD\0>\t\1\b5\tE\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bG\0005\tH\0=\t+\b5\tI\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bJ\0009\t\a\2=\t-\b5\tK\0=\t+\b5\tL\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bM\0005\tN\0=\t)\bB\6\2\1\18\6\5\0005\bO\0005\tR\0005\nQ\0009\vP\1=\v\v\n=\nS\t5\nT\0009\v:\1=\v\v\n=\nU\t5\nV\0009\v6\1=\v\v\n=\nW\t=\tX\b9\t\a\2=\t-\bB\6\2\0019\6Y\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\0\1\0\1\tleft\3\1\22diagnostics_color\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\fpadding\1\0\2\nright\3\2\tleft\3\1\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\25component_separators\5\18icons_enabled\1\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\ngreen\f#00FF5F\bred\f#D70000\tblue\f#0087FF\nwhite\f#ffffff\afg\f#757575\vyellow\f#F6C177\abg\f#000000\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n´\b\0\0\6\0&\0;6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1,\1=\1\5\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\15\0005\2\16\0=\2\17\0015\2\18\0=\2\19\1=\1\14\0006\0\20\0'\2\21\0B\0\2\0029\0\22\0005\2\23\0005\3\24\0=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0025\3\30\0=\3\31\2B\0\2\0016\0\0\0009\0 \0009\0!\0'\2\"\0'\3#\0'\4$\0005\5%\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\16auto_resize\2\nwidth\b40%\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\1\venable\2\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\17arrow_closed\bÔë†\topen\bÔëº\15arrow_open\bÔëº\nempty\bÔë†\fdefault\bÔë†\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\bgit\1\0\a\14untracked\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\ffolders\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n•\r\0\2\n\0,\0¶\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0006\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0'\b\t\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\f\0'\b\r\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\26\0'\b\27\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\28\0'\b\29\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\30\0'\b\31\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a \0'\b!\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\"\0'\b#\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a$\0'\b%\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a&\0'\b'\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a(\0'\b)\0\18\t\2\0B\3\6\0016\3\0\0009\3*\3'\5+\0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so-<cmd>lua vim.diagnostic.setloclist()<CR>\14<leader>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\14<leader>e+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim¶\3\1\0\r\0\19\0&6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0023\1\5\0006\2\6\0009\2\a\0029\2\b\0029\2\t\2B\2\1\0026\3\0\0'\5\n\0B\3\2\0029\3\v\3\18\5\2\0B\3\2\2\18\2\3\0005\3\f\0006\4\r\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\2\t5\v\14\0=\1\15\v=\2\16\v5\f\17\0=\f\18\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\1\0\4\nError\f#db4b4b\16Information\f#0db9d7\fWarning\f#e0af68\tHint\f#10B981\nsetup\15lsp-colors\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleë\6\1\0\f\0002\0`6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0029\3\b\0025\5\f\0005\6\n\0003\a\t\0=\a\v\6=\6\r\0055\6\16\0009\a\14\0029\a\15\aB\a\1\2=\a\17\0069\a\14\0029\a\18\aB\a\1\2=\a\19\0069\a\14\0029\a\20\a)\t¸ˇB\a\2\2=\a\21\0069\a\14\0029\a\20\a)\t\4\0B\a\2\2=\a\22\0069\a\14\0029\a\23\aB\a\1\2=\a\24\0069\a\14\0029\a\25\aB\a\1\2=\a\26\0069\a\14\0029\a\27\a5\t\30\0009\n\28\0029\n\29\n=\n\31\tB\a\2\2=\a \0063\a!\0=\a\"\0063\a#\0=\a$\6=\6\14\0059\6%\0029\6&\0064\b\3\0005\t'\0>\t\1\b5\t(\0>\t\2\b4\t\3\0005\n)\0>\n\1\tB\6\3\2=\6&\5B\3\2\0019\3\b\0029\3*\3'\5+\0005\6-\0004\a\3\0005\b,\0>\b\1\a=\a&\6B\3\3\0019\3\b\0029\3*\3'\5.\0005\0061\0009\a%\0029\a&\a4\t\3\0005\n/\0>\n\1\t4\n\3\0005\v0\0>\v\1\nB\a\3\2=\a&\6B\3\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÅ\6\0\0\b\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\"\0'\5#\0005\6$\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4å\1\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\t\0\0\18--quote-style\21AutoPreferDouble\19--column-width\3»\1\19--indent-width\3\2\18--indent-type\vSpaces\1\0\2\nstdin\1\bexe\vstyluaÈ\3\1\0\a\0\21\0-3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0003\6\15\0>\6\1\5=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0π\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite\n          augroup END\n        \bcmd\bvim\rfiletype\blua\0\rmarkdown\bsvg\tjson\tscss\bcss\thtml\bvue\15typescript\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\n∏\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0", "config", "neovim")
time([[Config for neovim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n·\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\vcancel\n<esc>\frefresh\6r\1\0\v\vheight\3\n\nicons\1\tmode\26workspace_diagnostics\rposition\vbottom\nwidth\0032\15auto_close\2\25use_diagnostic_signs\2\14auto_fold\1\17auto_preview\2\14auto_open\1\17indent_lines\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
