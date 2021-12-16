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
  ["format.nvim"] = {
    config = { "\27LJ\2\nõ\6\0\0\6\0&\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0005\5\29\0=\5\5\4>\4\1\0035\4 \0005\5\31\0=\5\5\4>\4\2\3=\3!\2B\0\2\0016\0\"\0009\0#\0009\0$\0'\2%\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\vtarget\fcurrent\16end_pattern\n^```$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tsass\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nØ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ttext\6~\ahl\20GitGutterChange\14topdelete\1\0\2\ttext\b‚Äæ\ahl\20GitGutterDelete\vdelete\1\0\2\ttext\6_\ahl\20GitGutterDelete\vchange\1\0\2\ttext\6~\ahl\20GitGutterChange\badd\1\0\0\1\0\2\ttext\6+\ahl\17GitGutterAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n‡\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile&indent_blankline_filetype_exclude\1\3\0\0\thelp\vpacker\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\b‚îä\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ç\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\6-˛ˇˇˇ\31£\f\1\0\f\0Z\0∏\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5!\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\"\0035\4#\0=\4$\0033\4%\0003\5&\0\18\6\4\0005\b'\0005\t(\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t)\b5\t*\0=\t+\bB\6\2\1\18\6\4\0005\b,\0009\t\5\2=\t-\b5\t/\0009\n.\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b0\0B\6\2\1\18\6\4\0005\b1\0005\t2\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b3\0005\t4\0=\t5\b5\t8\0005\n7\0009\v6\1=\v\v\n=\n9\t5\n;\0009\v:\1=\v\v\n=\n<\t5\n>\0009\v=\1=\v\v\n=\n?\t5\n@\0009\v\v\1=\v\v\n=\n?\t=\tA\b5\tB\0=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tC\0>\t\1\bB\6\2\1\18\6\4\0005\bF\0003\tD\0>\t\1\b5\tE\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bG\0005\tH\0=\t+\b5\tI\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bJ\0009\t\a\2=\t-\b5\tK\0=\t+\b5\tL\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bM\0005\tN\0=\t)\bB\6\2\1\18\6\5\0005\bO\0005\tR\0005\nQ\0009\vP\1=\v\v\n=\nS\t5\nT\0009\v:\1=\v\v\n=\nU\t5\nV\0009\v6\1=\v\v\n=\nW\t=\tX\b9\t\a\2=\t-\bB\6\2\0019\6Y\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\0\1\0\1\tleft\3\1\22diagnostics_color\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\fpadding\1\0\2\nright\3\2\tleft\3\1\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\23section_separators\5\25component_separators\5\18icons_enabled\1\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\tblue\f#0087FF\abg\f#121212\afg\f#757575\bred\f#D70000\vyellow\f#F6C177\nwhite\f#ffffff\ngreen\f#00FF5F\flualine\frequire\0" },
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
    config = { "\27LJ\2\n◊\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\2\nguifg\f#FFD14E\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
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
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¡\2\1\0\r\0\17\0 6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\v5\f\15\0=\f\16\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nº\b\0\0\6\0'\0?6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\3\0=\1\5\0006\0\0\0009\0\1\0)\1Ù\1=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\b\0=\2\n\0015\2\v\0=\2\f\1=\1\a\0006\0\0\0009\0\1\0005\1\14\0=\1\r\0006\0\0\0009\0\1\0005\1\16\0005\2\17\0=\2\18\0015\2\19\0=\2\20\1=\1\15\0006\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2\25\0005\3\24\0=\3\26\0025\3\27\0005\4\28\0=\4\29\3=\3\30\0025\3\31\0=\3 \2B\0\2\0016\0\0\0009\0!\0009\0\"\0'\2#\0'\3$\0'\4%\0005\5&\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\nwidth\b40%\16auto_resize\2\ffilters\vcustom\1\n\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\nempty\bÔë†\topen\bÔëº\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\17arrow_closed\bÔë†\fdefault\bÔë†\15arrow_open\bÔëº\bgit\1\0\a\runmerged\bÓúß\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\nfiles\3\1\18folder_arrows\3\0\ffolders\3\1\bgit\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\venable\2\14set_jumps\2\rrefactor\15navigation\1\0\5\20goto_next_usage\n<a-*>\24goto_previous_usage\n<a-#>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aic\17@class.inner\aif\20@function.inner\aac\17@class.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["onedark.nvim"] = {
    config = { "\27LJ\2\nË\2\0\0\3\0\r\0\"6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\1\0+\1\2\0=\1\t\0006\0\n\0'\2\v\0B\0\2\0029\0\f\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire#onedark_transparent_background\31onedark_hide_ending_tildes\"onedark_diagnostics_undercurl\31onedark_darker_diagnostics$onedark_disable_terminal_colors\27onedark_italic_comment\tdeep\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
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
    config = { "\27LJ\2\n•\5\0\0\b\0\31\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0028:lua require(\"telescope.builtin\").grep_string()<CR>\afs\1\0\2\vsilent\2\fnoremap\0024:lua require(\"telescope.builtin\").buffers()<CR>\afb\1\0\2\vsilent\2\fnoremap\0026:lua require(\"telescope.builtin\").live_grep()<CR>\afg\1\0\2\vsilent\2\fnoremap\0027:lua require(\"telescope.builtin\").find_files()<CR>\aff\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n·\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\frefresh\6r\vcancel\n<esc>\1\0\v\nwidth\0032\14auto_open\1\17indent_lines\2\nicons\1\15auto_close\2\17auto_preview\2\rposition\vbottom\tmode\26workspace_diagnostics\25use_diagnostic_signs\2\14auto_fold\1\vheight\3\n\nsetup\ftrouble\frequire\0" },
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
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n◊\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30:BufferLineCloseRight<CR>\abr\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\2\nguifg\f#FFD14E\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nº\b\0\0\6\0'\0?6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\3\0=\1\5\0006\0\0\0009\0\1\0)\1Ù\1=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\b\0=\2\n\0015\2\v\0=\2\f\1=\1\a\0006\0\0\0009\0\1\0005\1\14\0=\1\r\0006\0\0\0009\0\1\0005\1\16\0005\2\17\0=\2\18\0015\2\19\0=\2\20\1=\1\15\0006\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2\25\0005\3\24\0=\3\26\0025\3\27\0005\4\28\0=\4\29\3=\3\30\0025\3\31\0=\3 \2B\0\2\0016\0\0\0009\0!\0009\0\"\0'\2#\0'\3$\0'\4%\0005\5&\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\nwidth\b40%\16auto_resize\2\ffilters\vcustom\1\n\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\nempty\bÔë†\topen\bÔëº\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\17arrow_closed\bÔë†\fdefault\bÔë†\15arrow_open\bÔëº\bgit\1\0\a\runmerged\bÓúß\14untracked\bÔëÑ\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\fignored\b‚óå\frenamed\bÔïì\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\nfiles\3\1\18folder_arrows\3\0\ffolders\3\1\bgit\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleë\6\1\0\f\0002\0`6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0029\3\b\0025\5\f\0005\6\n\0003\a\t\0=\a\v\6=\6\r\0055\6\16\0009\a\14\0029\a\15\aB\a\1\2=\a\17\0069\a\14\0029\a\18\aB\a\1\2=\a\19\0069\a\14\0029\a\20\a)\t¸ˇB\a\2\2=\a\21\0069\a\14\0029\a\20\a)\t\4\0B\a\2\2=\a\22\0069\a\14\0029\a\23\aB\a\1\2=\a\24\0069\a\14\0029\a\25\aB\a\1\2=\a\26\0069\a\14\0029\a\27\a5\t\30\0009\n\28\0029\n\29\n=\n\31\tB\a\2\2=\a \0063\a!\0=\a\"\0063\a#\0=\a$\6=\6\14\0059\6%\0029\6&\0064\b\3\0005\t'\0>\t\1\b5\t(\0>\t\2\b4\t\3\0005\n)\0>\n\1\tB\6\3\2=\6&\5B\3\2\0019\3\b\0029\3*\3'\5+\0005\6-\0004\a\3\0005\b,\0>\b\1\a=\a&\6B\3\3\0019\3\b\0029\3*\3'\5.\0005\0061\0009\a%\0029\a&\a4\t\3\0005\n/\0>\n\1\t4\n\3\0005\v0\0>\v\1\nB\a\3\2=\a&\6B\3\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n‡\2\0\0\4\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0>highlight IndentBlanklineChar guifg=#121212 gui=nocombine\bcmd\bvim%indent_blankline_buftype_exclude\1\3\0\0\rterminal\vnofile&indent_blankline_filetype_exclude\1\3\0\0\thelp\vpacker\1\0\4\31show_current_context_start\1\25show_current_context\2\25space_char_blankline\6 \tchar\b‚îä\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireõ\n\1\0\a\0003\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\14\4=\4\23\0035\4\25\0005\5\24\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0005\6\30\0=\6\14\5=\5\31\0045\5 \0005\6!\0=\6\14\5=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0029\0\2\0005\0021\0003\0030\0=\0032\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\venable\2\14set_jumps\2\rrefactor\15navigation\1\0\5\20goto_next_usage\n<a-*>\24goto_previous_usage\n<a-#>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aic\17@class.inner\aif\20@function.inner\aac\17@class.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvimñ\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\vÄ\21\2\1\0)\3\0\0\1\3\2\0X\2\4Ä\21\2\1\0\21\3\0\0\0\2\3\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\3¿\14lualine_x\rsections\vinsert\ntable\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=ç\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1ÄL\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14Ä9\b\t\a9\b\n\b\15\0\b\0X\t\nÄ6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2Ä9\t\r\aL\t\2\0E\6\3\3R\6L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\6-˛ˇˇˇ\31£\f\1\0\f\0Z\0∏\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0025\3\22\0005\4\n\0005\5\16\0005\6\14\0005\a\f\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\17\0055\6\19\0005\a\18\0009\b\v\1=\b\v\a9\b\r\1=\b\r\a=\a\15\6=\6\20\5=\5\21\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5!\0044\5\0\0=\5\27\0044\5\0\0=\5\28\0044\5\0\0=\5\29\0044\5\0\0=\5\30\4=\4\"\0035\4#\0=\4$\0033\4%\0003\5&\0\18\6\4\0005\b'\0005\t(\0009\n\v\1=\n\v\t9\n\r\1=\n\r\t=\t)\b5\t*\0=\t+\bB\6\2\1\18\6\4\0005\b,\0009\t\5\2=\t-\b5\t/\0009\n.\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b0\0B\6\2\1\18\6\4\0005\b1\0005\t2\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\4\0005\b3\0005\t4\0=\t5\b5\t8\0005\n7\0009\v6\1=\v\v\n=\n9\t5\n;\0009\v:\1=\v\v\n=\n<\t5\n>\0009\v=\1=\v\v\n=\n?\t5\n@\0009\v\v\1=\v\v\n=\n?\t=\tA\b5\tB\0=\t+\bB\6\2\1\18\6\4\0004\b\3\0003\tC\0>\t\1\bB\6\2\1\18\6\4\0005\bF\0003\tD\0>\t\1\b5\tE\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bG\0005\tH\0=\t+\b5\tI\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bJ\0009\t\a\2=\t-\b5\tK\0=\t+\b5\tL\0009\n\v\1=\n\v\t=\t)\bB\6\2\1\18\6\5\0005\bM\0005\tN\0=\t)\bB\6\2\1\18\6\5\0005\bO\0005\tR\0005\nQ\0009\vP\1=\v\v\n=\nS\t5\nT\0009\v:\1=\v\v\n=\nU\t5\nV\0009\v6\1=\v\v\n=\nW\t=\tX\b9\t\a\2=\t-\bB\6\2\0019\6Y\0\18\b\3\0B\6\2\0012\0\0ÄK\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\ngreen\1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\bÓÇ†\1\0\0\1\0\1\nright\3\2\1\2\0\0\15o:encoding\1\0\0\1\0\1\nright\3\1\1\2\0\0\15fileformat\1\0\0\1\0\0\0\0\1\0\1\tleft\3\1\22diagnostics_color\1\0\0\15color_info\1\0\0\tblue\15color_warn\1\0\0\vyellow\16color_error\1\0\0\1\0\0\bred\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\nwhite\tcond\1\2\0\0\rfilename\fpadding\1\0\2\nright\3\2\tleft\3\1\ncolor\1\0\0\1\2\0\0\tmode\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\14lualine_v\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\6c\1\0\0\abg\1\0\0\afg\1\0\3\23section_separators\5\25component_separators\5\18icons_enabled\1\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\1\0\a\tblue\f#0087FF\abg\f#121212\afg\f#757575\bred\f#D70000\vyellow\f#F6C177\nwhite\f#ffffff\ngreen\f#00FF5F\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nØ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ttext\6~\ahl\20GitGutterChange\14topdelete\1\0\2\ttext\b‚Äæ\ahl\20GitGutterDelete\vdelete\1\0\2\ttext\6_\ahl\20GitGutterDelete\vchange\1\0\2\ttext\6~\ahl\20GitGutterChange\badd\1\0\0\1\0\2\ttext\6+\ahl\17GitGutterAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: format.nvim
time([[Config for format.nvim]], true)
try_loadstring("\27LJ\2\nõ\6\0\0\6\0&\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0005\5\29\0=\5\5\4>\4\1\0035\4 \0005\5\31\0=\5\5\4>\4\2\3=\3!\2B\0\2\0016\0\"\0009\0#\0009\0$\0'\2%\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\vtarget\fcurrent\16end_pattern\n^```$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tsass\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0", "config", "format.nvim")
time([[Config for format.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nË\2\0\0\3\0\r\0\"6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\1\0+\1\2\0=\1\t\0006\0\n\0'\2\v\0B\0\2\0029\0\f\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire#onedark_transparent_background\31onedark_hide_ending_tildes\"onedark_diagnostics_undercurl\31onedark_darker_diagnostics$onedark_disable_terminal_colors\27onedark_italic_comment\tdeep\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n·\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\frefresh\6r\vcancel\n<esc>\1\0\v\nwidth\0032\14auto_open\1\17indent_lines\2\nicons\1\15auto_close\2\17auto_preview\2\rposition\vbottom\tmode\26workspace_diagnostics\25use_diagnostic_signs\2\14auto_fold\1\vheight\3\n\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¡\2\1\0\r\0\17\0 6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\v5\f\15\0=\f\16\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n•\5\0\0\b\0\31\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0'\5\20\0005\6\21\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\15\0009\1\16\0019\1\17\1'\3\18\0'\4\28\0'\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0028:lua require(\"telescope.builtin\").grep_string()<CR>\afs\1\0\2\vsilent\2\fnoremap\0024:lua require(\"telescope.builtin\").buffers()<CR>\afb\1\0\2\vsilent\2\fnoremap\0026:lua require(\"telescope.builtin\").live_grep()<CR>\afg\1\0\2\vsilent\2\fnoremap\0027:lua require(\"telescope.builtin\").find_files()<CR>\aff\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-u>\1\n<C-d>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
