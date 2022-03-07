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
    config = { "\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\5\0=\1\b\0K\0\1\0\24battery#graph_width\b\31battery#symbol_discharging\bﮣ\28battery#symbol_charging\f%s %v%%\29battery#component_format\6g\bvim\0" },
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
  ["cobalt2.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0\31\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\a\0005\4\v\0006\5\4\0009\5\b\0059\5\t\0059\5\n\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\r\0005\4\15\0006\5\4\0009\5\b\0059\5\t\0059\5\14\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\16\0005\4\18\0006\5\4\0009\5\b\0059\5\t\0059\5\17\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\19\0005\4\21\0006\5\4\0009\5\b\0059\5\t\0059\5\20\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\22\0005\4\24\0006\5\4\0009\5\b\0059\5\t\0059\5\23\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\25\0005\4\26\0006\5\4\0009\5\b\0059\5\t\0059\5\14\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\27\0005\4\28\0006\5\4\0009\5\b\0059\5\t\0059\5\17\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\29\0005\4\30\0B\0\4\1K\0\1\0\1\0\1\afg\f#193549\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\nwhite\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\6g\16GitSignsAdd\16nvim_set_hl\bapi\bvim\fcobalt2\16colorscheme\15colorbuddy\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cobalt2.nvim",
    url = "https://github.com/lalitmee/cobalt2.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["ctrlsf.vim"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3�\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsChangeNr\ttext\b┃\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b┃\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b┃\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b┃\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b┃\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\31show_current_context_start\1\tchar\b│\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0" },
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
    config = { "\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\rwinwidth\afn\bvim�\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\4�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\4�\14lualine_x\rsections\vinsert\ntable?\0\0\4\1\5\0\t5\0\3\0-\1\0\0006\2\0\0009\2\1\0029\2\2\2B\2\1\0028\1\2\1=\1\4\0L\0\2\0\1�\afg\1\0\0\tmode\afn\bvim\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=�\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1�L\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14�9\b\t\a9\b\n\b\15\0\b\0X\t\n�6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2�9\t\r\aL\t\2\0E\6\3\3R\6�L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5����\31�\16\1\0\r\0�\1\0�\0026\0\0\0009\0\1\0009\0\2\0005\1\4\0009\2\3\0=\2\5\0019\2\6\0=\2\a\0019\2\b\0=\2\t\0019\2\b\0=\2\n\0019\2\b\0=\2\v\0019\2\f\0=\2\r\0019\2\3\0=\2\14\0019\2\15\0=\2\16\0019\2\15\0=\2\17\0019\2\15\0=\2\18\0019\2\19\0=\2\20\0019\2\21\0=\2\22\0019\2\21\0=\2\23\0019\2\f\0=\2\24\0019\2\f\0=\2\25\0019\2\21\0=\2\26\0019\2\21\0=\2\27\0019\2\28\0=\2\29\0019\2\3\0=\2\30\0019\2\28\0=\2\31\0016\2 \0'\4!\0B\2\2\0025\3#\0003\4\"\0=\4$\0033\4%\0=\4&\0033\4'\0=\4(\0035\0044\0005\5)\0005\6.\0005\a-\0005\b*\0009\t\3\0=\t\3\b9\t+\0=\t,\b=\b\r\a=\a/\0065\a1\0005\b0\0009\t\3\0=\t\3\b9\t+\0=\t,\b=\b\r\a=\a2\6=\0063\5=\0055\0045\0056\0004\6\0\0=\0067\0054\6\0\0=\0068\0054\6\0\0=\0069\0054\6\0\0=\6:\0054\6\0\0=\6;\0054\6\0\0=\6<\5=\5=\0044\5\0\0=\5>\0045\5?\0=\5@\0043\5A\0003\6B\0\18\a\5\0005\tC\0005\nD\0009\v\3\0=\v\3\n9\v+\0=\v,\n=\nE\t5\nF\0=\nG\tB\a\2\1\18\a\5\0005\tH\0003\nI\0=\nE\t5\nJ\0=\nG\tB\a\2\1\18\a\5\0005\tK\0005\nL\0=\nM\t5\nQ\0006\v\0\0009\v\1\v9\vN\v9\vO\v'\fP\0&\v\f\v=\vO\n6\v\0\0009\v\1\v9\vN\v9\vR\v'\fP\0&\v\f\v>\v\1\n6\v\0\0009\v\1\v9\vN\v9\vS\v'\fP\0&\v\f\v>\v\2\n6\v\0\0009\v\1\v9\vN\v9\vT\v'\fP\0&\v\f\v>\v\3\n=\nU\t5\nW\0005\vV\0009\f\21\0=\f\3\v=\vX\n5\vY\0009\f\19\0=\f\3\v=\vZ\n5\v[\0009\f\b\0=\f\3\v=\v\\\n5\v]\0009\f\28\0=\f\3\v=\v^\n=\n_\t5\n`\0=\nG\tB\a\2\1\18\a\5\0005\ta\0005\nb\0=\nG\t9\n$\3=\nc\tB\a\2\1\18\a\5\0005\td\0005\ne\0=\nU\t9\n$\3=\nc\t5\nf\0009\v\28\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0005\tg\0B\a\2\1\18\a\5\0005\th\0005\ni\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0004\t\3\0003\nj\0>\n\1\tB\a\2\1\18\a\5\0005\tk\0005\nl\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0005\to\0003\nm\0>\n\1\t5\nn\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\tp\0005\nq\0=\nG\t5\nr\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\ts\0009\n&\3=\nc\t5\nt\0=\nG\t5\nu\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\tv\0005\nw\0=\nE\tB\a\2\1\18\a\6\0005\tx\0005\ny\0=\nU\t5\n{\0005\vz\0009\f\6\0=\f\3\v=\v|\n5\v}\0009\f\19\0=\f\3\v=\v~\n5\v\0009\f\21\0=\f\3\v=\v�\n=\n�\t9\n&\3=\nc\tB\a\2\0019\a�\2\18\t\4\0B\a\2\0012\0\0�K\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\1\0\3\nadded\t \fremoved\t \rmodified\t \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\b\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\2\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\2\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\3\rreadonly\t \funnamed\14[No Name]\rmodified\t \1\2\0\0\rfilename\tcond\1\0\1\tleft\3\2\1\2\2\0\rfiletype\14icon_only\2\fcolored\2\1\0\1\tleft\3\3\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\fsymbols\thint\tinfo\fwarning\1\0\0\6 \nerror\nicons\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\tleft\3\2\0\1\2\0\0\tmode\fpadding\1\0\1\tleft\3\1\ncolor\1\0\0\1\2\0\0\27%{battery#component()}\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\1\0\0\abg\vbg_alt\1\0\0\1\0\3\25component_separators\5\18icons_enabled\2\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\6t\6!\ar?\nwhite\arm\6r\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\vpurple\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\afg\14my_colors\6g\bvim\0" },
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
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0!\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\14\0005\4\b\0006\5\t\0009\5\n\0059\5\v\0059\5\f\5=\5\r\4=\4\15\0035\4\17\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\18\0035\4\19\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\20\0035\4\21\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\22\3=\3\23\2B\0\2\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\27\0'\4\28\0005\5\29\0B\0\5\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\30\0'\4\31\0005\5 \0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\tfill\1\0\0\15background\1\0\0\vbg_alt\20buffer_selected\1\0\0\nguibg\abg\14my_colors\6g\bvim\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\20show_close_icon\1\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\22�6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5�-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\a\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\1�\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2�\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0B\0\1\1X\0\v�6\0\2\0009\0\3\0009\0\4\0)\2��B\0\2\2\t\0\0\0X\0\4�-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3�\2�\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2\v\0\2\2\0\0\0\1L\1\2\0�\a\1\0\r\0;\0t6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a0\0009\b,\0005\n-\0003\v.\0=\v/\nB\b\2\2=\b1\a=\a2\6B\4\2\0019\4\5\0039\0043\4'\0064\0005\a6\0004\b\3\0005\t5\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0043\4'\0067\0005\a:\0009\b'\0039\b(\b4\n\3\0005\v8\0>\v\1\n4\v\3\0005\f9\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\0\0\flspkind\frequire\0" },
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
    config = { "\27LJ\2\n�\v\0\2\t\1%\0�\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\0\0009\2 \2'\4!\0B\2\2\0019\2\"\0009\2#\2\15\0\2\0X\3\4�6\2\0\0009\2 \2'\4$\0B\2\2\1K\0\1\0\0�>autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()\24document_formatting\26resolved_capabilities= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmd*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>fE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim�\1\0\0\5\3\6\0\r5\0\0\0-\1\0\0=\1\1\0-\1\1\0=\1\2\0005\1\3\0=\1\4\0-\1\2\0\18\3\1\0009\1\5\1\18\4\0\0B\1\3\1K\0\1\0\2�\4�\f�\nsetup\nflags\1\0\1\26debounce_text_changes\3�\1\17capabilities\14on_attach\1\0\0�\a\1\0\17\0000\0k6\0\0\0009\0\1\0009\0\2\0009\0\3\0+\2\0\0)\3�\aB\0\3\0015\0\4\0006\1\5\0'\3\6\0B\1\2\0023\2\a\0006\3\5\0'\5\b\0B\3\2\0026\4\0\0009\4\1\0049\4\t\0049\4\n\4B\4\1\0026\5\5\0'\a\v\0B\5\2\0029\5\f\5\18\a\4\0B\5\2\2\18\4\5\0005\5\r\0006\6\14\0\18\b\5\0B\6\2\4X\t\23�9\v\15\3\18\r\n\0B\v\2\3\15\0\v\0X\r\17�\18\15\f\0009\r\16\f3\16\17\0B\r\3\1\18\15\f\0009\r\18\fB\r\2\2\14\0\r\0X\r\b�6\r\19\0'\15\20\0\18\16\n\0&\15\16\15B\r\2\1\18\15\f\0009\r\21\fB\r\2\0012\v\0�E\t\3\3R\t�6\6\0\0009\6\22\0069\6\23\0065\b\25\0005\t\24\0=\t\26\b5\t\27\0=\t\28\bB\6\2\0015\6 \0006\a\0\0009\a\29\a9\a\30\a9\a\31\a=\a!\0066\a\0\0009\a\29\a9\a\30\a9\a\"\a=\a#\0066\a\0\0009\a\29\a9\a\30\a9\a$\a=\a%\0066\a\0\0009\a\29\a9\a\30\a9\a&\a=\a'\0066\a(\0\18\t\6\0B\a\2\4H\n\f�'\f)\0\18\r\n\0&\f\r\f6\r\0\0009\r*\r9\r+\r\18\15\f\0005\16,\0=\v-\16=\f.\16=\f/\16B\r\3\1F\n\3\3R\n�2\0\0�K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\tHint\thint\tInfo\tinfo\tWarn\fwarning\nError\1\0\0\nerror\nicons\6g\nfloat\1\0\6\nstyle\fminimal\vheader\5\vprefix\5\vsource\valways\vborder\frounded\14focusable\1\17virtual_text\1\0\4\18severity_sort\1\21update_in_insert\2\14underline\2\nsigns\2\1\0\2\vprefix\b●\vsource\valways\vconfig\15diagnostic\finstall\16Installing \nprint\17is_installed\0\ron_ready\15get_server\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\31nvim-lsp-installer.servers\0\14lspconfig\frequire\1\0\2\fnoremap\2\vsilent\2\20formatting_sync\bbuf\blsp\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\14\0\0\b\0?\0W6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1�\0=\1\4\0006\0\0\0009\0\1\0004\1\0\0=\1\5\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\n\0=\2\v\0015\2\f\0=\2\r\1=\1\b\0006\0\14\0'\2\15\0B\0\2\0029\0\16\0005\2\17\0004\3\0\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0005\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\26\3=\3\27\0025\3\28\0004\4\0\0=\4\29\3=\3\30\0025\3\31\0005\4 \0=\4!\3=\3\"\0025\3#\0=\3\v\0025\3$\0005\4%\0004\5\0\0=\5&\4=\4'\3=\3(\0025\3)\0=\3*\0025\3,\0005\4+\0=\4-\0035\4.\0005\5/\0005\0061\0005\a0\0=\a2\0065\a3\0=\a4\6=\0065\5=\0056\4=\0047\3=\0038\2B\0\2\0016\0\0\0009\0009\0009\0:\0'\2;\0'\3<\0'\4=\0005\5>\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\2\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\15signcolumn\byes\21hide_root_folder\1\vheight\3\30\nwidth\3(\31preserve_window_proportins\1\tside\tleft\19relativenumber\1\vnumber\1\1\0\3\vignore\2\ftimeout\3�\2\venable\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\1\0\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2'hijack_unnamed_buffer_when_opening\1\nsetup\14nvim-tree\frequire\vfolder\1\0\b\fdefault\b\fsymlink\b\topen\b\17arrow_closed\b\nempty\b\15arrow_open\b\15empty_open\b\17symlink_open\b\bgit\1\0\a\vstaged\b\fdeleted\b\runstaged\b\14untracked\b\frenamed\b\fignored\b◌\runmerged\b\1\0\2\fsymlink\t \fdefault\t \20nvim_tree_icons\1\0\4\ffolders\3\1\bgit\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\28nvim_tree_special_files\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire�\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["project.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0026\3\n\0009\3\v\0039\3\f\3'\5\r\0B\3\2\2=\3\14\2B\0\2\1K\0\1\0\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\3\0\0\blsp\fpattern\1\0\3\17silent_chdir\2\16show_hidden\1\16manual_mode\1\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["stylua-nvim"] = {
    config = { "\27LJ\2\ng\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Hautocmd BufWritePost *.lua lua require('stylua-nvim').format_file()\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/stylua-nvim",
    url = "https://github.com/ckipp01/stylua-nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\6\0\0\b\0(\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\17\0B\1\2\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\"\0'\5#\0005\6$\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4%\0'\5&\0005\6'\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\rprojects\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2�\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vdouble\1\0\t\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\18close_on_exit\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\27\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\f\0006\4\b\0009\4\t\0049\4\n\0049\4\v\4=\4\v\0036\4\b\0009\4\t\0049\4\n\0049\4\r\4=\4\r\0036\4\b\0009\4\t\0049\4\n\0049\4\14\4=\4\15\0036\4\b\0009\4\t\0049\4\n\0049\4\16\4=\4\16\3=\3\17\2B\0\2\0016\0\b\0009\0\18\0009\0\19\0'\2\20\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\b\0009\0\18\0009\0\19\0'\2\20\0'\3\24\0'\4\25\0005\5\26\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\att\6n\bset\vkeymap\nsigns\thint\16information\tinfo\fwarning\1\0\1\nother\b﫠\nerror\nicons\6g\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\nclose\6q\frefresh\6r\1\0\v\14auto_fold\1\17auto_preview\2\17indent_lines\2\tmode\26workspace_diagnostics\vheight\3\n\nwidth\0032\15auto_close\2\nicons\2\rposition\vbottom\14auto_open\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0" },
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
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\v\0\2\t\1%\0�\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\20\0'\a\21\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\22\0'\a\23\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\24\0'\a\25\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\26\0'\a\27\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\28\0'\a\29\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\30\0'\a\31\0-\b\0\0B\2\6\0016\2\0\0009\2 \2'\4!\0B\2\2\0019\2\"\0009\2#\2\15\0\2\0X\3\4�6\2\0\0009\2 \2'\4$\0B\2\2\1K\0\1\0\0�>autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()\24document_formatting\26resolved_capabilities= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmd*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>fE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim�\1\0\0\5\3\6\0\r5\0\0\0-\1\0\0=\1\1\0-\1\1\0=\1\2\0005\1\3\0=\1\4\0-\1\2\0\18\3\1\0009\1\5\1\18\4\0\0B\1\3\1K\0\1\0\2�\4�\f�\nsetup\nflags\1\0\1\26debounce_text_changes\3�\1\17capabilities\14on_attach\1\0\0�\a\1\0\17\0000\0k6\0\0\0009\0\1\0009\0\2\0009\0\3\0+\2\0\0)\3�\aB\0\3\0015\0\4\0006\1\5\0'\3\6\0B\1\2\0023\2\a\0006\3\5\0'\5\b\0B\3\2\0026\4\0\0009\4\1\0049\4\t\0049\4\n\4B\4\1\0026\5\5\0'\a\v\0B\5\2\0029\5\f\5\18\a\4\0B\5\2\2\18\4\5\0005\5\r\0006\6\14\0\18\b\5\0B\6\2\4X\t\23�9\v\15\3\18\r\n\0B\v\2\3\15\0\v\0X\r\17�\18\15\f\0009\r\16\f3\16\17\0B\r\3\1\18\15\f\0009\r\18\fB\r\2\2\14\0\r\0X\r\b�6\r\19\0'\15\20\0\18\16\n\0&\15\16\15B\r\2\1\18\15\f\0009\r\21\fB\r\2\0012\v\0�E\t\3\3R\t�6\6\0\0009\6\22\0069\6\23\0065\b\25\0005\t\24\0=\t\26\b5\t\27\0=\t\28\bB\6\2\0015\6 \0006\a\0\0009\a\29\a9\a\30\a9\a\31\a=\a!\0066\a\0\0009\a\29\a9\a\30\a9\a\"\a=\a#\0066\a\0\0009\a\29\a9\a\30\a9\a$\a=\a%\0066\a\0\0009\a\29\a9\a\30\a9\a&\a=\a'\0066\a(\0\18\t\6\0B\a\2\4H\n\f�'\f)\0\18\r\n\0&\f\r\f6\r\0\0009\r*\r9\r+\r\18\15\f\0005\16,\0=\v-\16=\f.\16=\f/\16B\r\3\1F\n\3\3R\n�2\0\0�K\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\tHint\thint\tInfo\tinfo\tWarn\fwarning\nError\1\0\0\nerror\nicons\6g\nfloat\1\0\6\nstyle\fminimal\vheader\5\vprefix\5\vsource\valways\vborder\frounded\14focusable\1\17virtual_text\1\0\4\18severity_sort\1\21update_in_insert\2\14underline\2\nsigns\2\1\0\2\vprefix\b●\vsource\valways\vconfig\15diagnostic\finstall\16Installing \nprint\17is_installed\0\ron_ready\15get_server\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\31nvim-lsp-installer.servers\0\14lspconfig\frequire\1\0\2\fnoremap\2\vsilent\2\20formatting_sync\bbuf\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\5\1\0156\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\b%:t\vexpand\nempty\afn\bvim\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\rwinwidth\afn\bvim�\1\0\0\6\0\a\0\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\5\0\18\4\0\0'\5\6\0&\4\5\4B\1\3\2\r\2\1\0X\2\v�\21\2\1\0)\3\0\0\1\3\2\0X\2\4�\21\2\1\0\21\3\0\0\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\6;\t.git\ffinddir\n%:p:h\vexpand\afn\bvimI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\4�\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\4�\14lualine_x\rsections\vinsert\ntable?\0\0\4\1\5\0\t5\0\3\0-\1\0\0006\2\0\0009\2\1\0029\2\2\2B\2\1\0028\1\2\1=\1\4\0L\0\2\0\1�\afg\1\0\0\tmode\afn\bvim\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a%=�\2\0\0\r\0\14\1&'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\1\0009\2\5\0029\2\6\2B\2\1\0026\3\a\0\18\5\2\0B\3\2\2\v\3\0\0X\3\1�L\0\2\0006\3\b\0\18\5\2\0B\3\2\4X\6\14�9\b\t\a9\b\n\b\15\0\b\0X\t\n�6\t\1\0009\t\v\t9\t\f\t\18\v\b\0\18\f\1\0B\t\3\2\b\t\0\0X\t\2�9\t\r\aL\t\2\0E\6\3\3R\6�L\0\2\0\tname\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\rfiletype\24nvim_buf_get_option\bapi\bvim\5����\31�\16\1\0\r\0�\1\0�\0026\0\0\0009\0\1\0009\0\2\0005\1\4\0009\2\3\0=\2\5\0019\2\6\0=\2\a\0019\2\b\0=\2\t\0019\2\b\0=\2\n\0019\2\b\0=\2\v\0019\2\f\0=\2\r\0019\2\3\0=\2\14\0019\2\15\0=\2\16\0019\2\15\0=\2\17\0019\2\15\0=\2\18\0019\2\19\0=\2\20\0019\2\21\0=\2\22\0019\2\21\0=\2\23\0019\2\f\0=\2\24\0019\2\f\0=\2\25\0019\2\21\0=\2\26\0019\2\21\0=\2\27\0019\2\28\0=\2\29\0019\2\3\0=\2\30\0019\2\28\0=\2\31\0016\2 \0'\4!\0B\2\2\0025\3#\0003\4\"\0=\4$\0033\4%\0=\4&\0033\4'\0=\4(\0035\0044\0005\5)\0005\6.\0005\a-\0005\b*\0009\t\3\0=\t\3\b9\t+\0=\t,\b=\b\r\a=\a/\0065\a1\0005\b0\0009\t\3\0=\t\3\b9\t+\0=\t,\b=\b\r\a=\a2\6=\0063\5=\0055\0045\0056\0004\6\0\0=\0067\0054\6\0\0=\0068\0054\6\0\0=\0069\0054\6\0\0=\6:\0054\6\0\0=\6;\0054\6\0\0=\6<\5=\5=\0044\5\0\0=\5>\0045\5?\0=\5@\0043\5A\0003\6B\0\18\a\5\0005\tC\0005\nD\0009\v\3\0=\v\3\n9\v+\0=\v,\n=\nE\t5\nF\0=\nG\tB\a\2\1\18\a\5\0005\tH\0003\nI\0=\nE\t5\nJ\0=\nG\tB\a\2\1\18\a\5\0005\tK\0005\nL\0=\nM\t5\nQ\0006\v\0\0009\v\1\v9\vN\v9\vO\v'\fP\0&\v\f\v=\vO\n6\v\0\0009\v\1\v9\vN\v9\vR\v'\fP\0&\v\f\v>\v\1\n6\v\0\0009\v\1\v9\vN\v9\vS\v'\fP\0&\v\f\v>\v\2\n6\v\0\0009\v\1\v9\vN\v9\vT\v'\fP\0&\v\f\v>\v\3\n=\nU\t5\nW\0005\vV\0009\f\21\0=\f\3\v=\vX\n5\vY\0009\f\19\0=\f\3\v=\vZ\n5\v[\0009\f\b\0=\f\3\v=\v\\\n5\v]\0009\f\28\0=\f\3\v=\v^\n=\n_\t5\n`\0=\nG\tB\a\2\1\18\a\5\0005\ta\0005\nb\0=\nG\t9\n$\3=\nc\tB\a\2\1\18\a\5\0005\td\0005\ne\0=\nU\t9\n$\3=\nc\t5\nf\0009\v\28\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0005\tg\0B\a\2\1\18\a\5\0005\th\0005\ni\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0004\t\3\0003\nj\0>\n\1\tB\a\2\1\18\a\5\0005\tk\0005\nl\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\5\0005\to\0003\nm\0>\n\1\t5\nn\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\tp\0005\nq\0=\nG\t5\nr\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\ts\0009\n&\3=\nc\t5\nt\0=\nG\t5\nu\0009\v\3\0=\v\3\n=\nE\tB\a\2\1\18\a\6\0005\tv\0005\nw\0=\nE\tB\a\2\1\18\a\6\0005\tx\0005\ny\0=\nU\t5\n{\0005\vz\0009\f\6\0=\f\3\v=\v|\n5\v}\0009\f\19\0=\f\3\v=\v~\n5\v\0009\f\21\0=\f\3\v=\v�\n=\n�\t9\n&\3=\nc\tB\a\2\0019\a�\2\18\t\4\0B\a\2\0012\0\0�K\0\1\0\nsetup\15diff_color\fremoved\1\0\0\rmodified\1\0\0\nadded\1\0\0\1\0\0\1\0\3\nadded\t \fremoved\t \rmodified\t \1\2\0\0\tdiff\1\0\1\afg\f#ffffff\1\2\1\0\vbranch\ticon\b\1\0\0\1\0\1\nright\3\2\1\2\1\0\15o:encoding\18icons_enabled\2\1\0\0\1\0\1\nright\3\1\1\2\1\0\15fileformat\18icons_enabled\2\1\0\0\1\0\0\0\1\0\0\1\2\0\0\17lsp_progress\0\1\0\0\1\2\0\0\rprogress\1\2\0\0\rlocation\1\0\0\1\0\3\rreadonly\t \funnamed\14[No Name]\rmodified\t \1\2\0\0\rfilename\tcond\1\0\1\tleft\3\2\1\2\2\0\rfiletype\14icon_only\2\fcolored\2\1\0\1\tleft\3\3\22diagnostics_color\15color_hint\1\0\0\15color_info\1\0\0\15color_warn\1\0\0\16color_error\1\0\0\1\0\0\fsymbols\thint\tinfo\fwarning\1\0\0\6 \nerror\nicons\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\0\1\tleft\3\2\0\1\2\0\0\tmode\fpadding\1\0\1\tleft\3\1\ncolor\1\0\0\1\2\0\0\27%{battery#component()}\0\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\22inactive_sections\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\ntheme\rinactive\1\0\0\1\0\0\vnormal\1\0\0\1\0\0\abg\vbg_alt\1\0\0\1\0\3\25component_separators\5\18icons_enabled\2\23section_separators\5\24check_git_workspace\0\18hide_in_width\0\21buffer_not_empty\1\0\0\0\flualine\frequire\6t\6!\ar?\nwhite\arm\6r\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\vpurple\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\afg\14my_colors\6g\bvim\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0024\3\0\0=\3\t\0026\3\n\0009\3\v\0039\3\f\3'\5\r\0B\3\2\2=\3\14\2B\0\2\1K\0\1\0\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\3\0\0\blsp\fpattern\1\0\3\17silent_chdir\2\16show_hidden\1\16manual_mode\1\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: stylua-nvim
time([[Config for stylua-nvim]], true)
try_loadstring("\27LJ\2\ng\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Hautocmd BufWritePost *.lua lua require('stylua-nvim').format_file()\bcmd\bvim\0", "config", "stylua-nvim")
time([[Config for stylua-nvim]], false)
-- Config for: cobalt2.nvim
time([[Config for cobalt2.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0\31\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\a\0005\4\v\0006\5\4\0009\5\b\0059\5\t\0059\5\n\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\r\0005\4\15\0006\5\4\0009\5\b\0059\5\t\0059\5\14\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\16\0005\4\18\0006\5\4\0009\5\b\0059\5\t\0059\5\17\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\19\0005\4\21\0006\5\4\0009\5\b\0059\5\t\0059\5\20\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\22\0005\4\24\0006\5\4\0009\5\b\0059\5\t\0059\5\23\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\25\0005\4\26\0006\5\4\0009\5\b\0059\5\t\0059\5\14\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\27\0005\4\28\0006\5\4\0009\5\b\0059\5\t\0059\5\17\5=\5\f\4B\0\4\0016\0\4\0009\0\5\0009\0\6\0)\2\0\0'\3\29\0005\4\30\0B\0\4\1K\0\1\0\1\0\1\afg\f#193549\24IndentBlanklineChar\1\0\0\24DiagnosticSignError\1\0\0\23DiagnosticSignWarn\1\0\0\tblue\23DiagnosticSignInfo\1\0\0\nwhite\23DiagnosticSignHint\1\0\0\bred\19GitSignsDelete\1\0\0\vyellow\19GitSignsChange\afg\1\0\0\ngreen\14my_colors\6g\16GitSignsAdd\16nvim_set_hl\bapi\bvim\fcobalt2\16colorscheme\15colorbuddy\frequire\0", "config", "cobalt2.nvim")
time([[Config for cobalt2.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\14\0\0\b\0?\0W6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1�\0=\1\4\0006\0\0\0009\0\1\0004\1\0\0=\1\5\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\n\0=\2\v\0015\2\f\0=\2\r\1=\1\b\0006\0\14\0'\2\15\0B\0\2\0029\0\16\0005\2\17\0004\3\0\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0005\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\26\3=\3\27\0025\3\28\0004\4\0\0=\4\29\3=\3\30\0025\3\31\0005\4 \0=\4!\3=\3\"\0025\3#\0=\3\v\0025\3$\0005\4%\0004\5\0\0=\5&\4=\4'\3=\3(\0025\3)\0=\3*\0025\3,\0005\4+\0=\4-\0035\4.\0005\5/\0005\0061\0005\a0\0=\a2\0065\a3\0=\a4\6=\0065\5=\0056\4=\0047\3=\0038\2B\0\2\0016\0\0\0009\0009\0009\0:\0'\2;\0'\3<\0'\4=\0005\5>\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\bset\vkeymap\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\2\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\15signcolumn\byes\21hide_root_folder\1\vheight\3\30\nwidth\3(\31preserve_window_proportins\1\tside\tleft\19relativenumber\1\vnumber\1\1\0\3\vignore\2\ftimeout\3�\2\venable\2\ffilters\vcustom\1\v\0\0\24packer_compiled.lua\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\1\0\4\tinfo\b\fwarning\b\thint\b\nerror\b\1\0\1\venable\1\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2'hijack_unnamed_buffer_when_opening\1\nsetup\14nvim-tree\frequire\vfolder\1\0\b\fdefault\b\fsymlink\b\topen\b\17arrow_closed\b\nempty\b\15arrow_open\b\15empty_open\b\17symlink_open\b\bgit\1\0\a\vstaged\b\fdeleted\b\runstaged\b\14untracked\b\frenamed\b\fignored\b◌\runmerged\b\1\0\2\fsymlink\t \fdefault\t \20nvim_tree_icons\1\0\4\ffolders\3\1\bgit\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\28nvim_tree_special_files\27nvim_tree_refresh_wait\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire�\4\1\0\5\0\24\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\0\0'\2\20\0B\0\2\0029\0\2\0005\2\22\0003\3\21\0=\3\23\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\bcss\blua\thtml\bvue\15javascript\tjson\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\b\0(\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\16\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\15\1'\3\17\0B\1\2\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\22\0'\5\23\0005\6\24\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\28\0'\5\29\0005\6\30\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\31\0'\5 \0005\6!\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4\"\0'\5#\0005\6$\0B\1\5\0016\1\18\0009\1\19\0019\1\20\1'\3\21\0'\4%\0'\5&\0005\6'\0B\1\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:Telescope git_status<cr>\15<leader>gs\1\0\2\fnoremap\2\vsilent\2\31:Telescope git_commits<cr>\15<leader>gc\1\0\2\fnoremap\2\vsilent\2\29:Telescope live_grep<cr>\afg\1\0\2\fnoremap\2\vsilent\2\31:Telescope grep_string<cr>\afs\1\0\2\fnoremap\2\vsilent\2\30:Telescope find_files<cr>\aff\1\0\2\fnoremap\2\vsilent\2\27:Telescope buffers<cr>\20<leader><space>\6n\bset\vkeymap\bvim\bfzf\rprojects\19load_extension\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\1\0\2\n<C-d>\1\n<C-u>\1\nclose\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\t.git\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\18\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\r\0=\1\f\0006\0\0\0009\0\1\0005\1\16\0005\2\15\0=\2\17\1=\1\14\0K\0\1\0\nopenb\1\0\2\tprev\6N\tnext\6n\1\0\2\bkey\6O\vsuffix\v<C-w>p\19ctrlsf_mapping\1\0\2\23duration_less_than\3�\a\aat\tdone\22ctrlsf_auto_focus\nasync\23ctrlsf_search_mode\b50%\19ctrlsf_winsize\24ctrlsf_auto_preview\23ctrlsf_fold_result\fproject\23trlsf_default_root\byes\26ctrlsf_case_sensitive\6g\bvim\0", "config", "ctrlsf.vim")
time([[Config for ctrlsf.vim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\n<C-h>\21<C-\\><C-n><C-W>h\n<C-w>\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2�\3\1\0\4\0\14\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\6\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\1\0\1\vborder\vdouble\1\0\t\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-\\>\14direction\nfloat\18close_on_exit\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\22�6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5�-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\a\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\3�\2�\1�\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2�\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0B\0\1\1X\0\v�6\0\2\0009\0\3\0009\0\4\0)\2��B\0\2\2\t\0\0\0X\0\4�-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3�\2�\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2\v\0\2\2\0\0\0\1L\1\2\0�\a\1\0\r\0;\0t6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\0\0'\5\4\0B\3\2\0029\4\5\0035\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0039\b\f\bB\b\1\2=\b\14\a9\b\v\0039\b\15\bB\b\1\2=\b\16\a9\b\v\0039\n\v\0039\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0039\n\v\0039\n\17\n)\f\4\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0039\n\v\0039\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\v\0039\b\25\bB\b\1\2=\b\26\a9\b\v\0039\b\27\b5\n\30\0009\v\28\0039\v\29\v=\v\31\nB\b\2\2=\b \a9\b\v\0033\n!\0005\v\"\0B\b\3\2=\b#\a9\b\v\0033\n$\0005\v%\0B\b\3\2=\b&\a=\a\v\0069\a'\0039\a(\a4\t\3\0005\n)\0>\n\1\t5\n*\0>\n\2\t4\n\3\0005\v+\0>\v\1\nB\a\3\2=\a(\0065\a0\0009\b,\0005\n-\0003\v.\0=\v/\nB\b\2\2=\b1\a=\a2\6B\4\2\0019\4\5\0039\0043\4'\0064\0005\a6\0004\b\3\0005\t5\0>\t\1\b=\b(\aB\4\3\0019\4\5\0039\0043\4'\0067\0005\a:\0009\b'\0039\b(\b4\n\3\0005\v8\0>\v\1\n4\v\3\0005\f9\0>\f\1\vB\b\3\2=\b(\aB\4\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\0\0\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: battery.vim
time([[Config for battery.vim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\5\0=\1\b\0K\0\1\0\24battery#graph_width\b\31battery#symbol_discharging\bﮣ\28battery#symbol_charging\f%s %v%%\29battery#component_format\6g\bvim\0", "config", "battery.vim")
time([[Config for battery.vim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\27\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\f\0006\4\b\0009\4\t\0049\4\n\0049\4\v\4=\4\v\0036\4\b\0009\4\t\0049\4\n\0049\4\r\4=\4\r\0036\4\b\0009\4\t\0049\4\n\0049\4\14\4=\4\15\0036\4\b\0009\4\t\0049\4\n\0049\4\16\4=\4\16\3=\3\17\2B\0\2\0016\0\b\0009\0\18\0009\0\19\0'\2\20\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\b\0009\0\18\0009\0\19\0'\2\20\0'\3\24\0'\4\25\0005\5\26\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\att\6n\bset\vkeymap\nsigns\thint\16information\tinfo\fwarning\1\0\1\nother\b﫠\nerror\nicons\6g\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\nclose\6q\frefresh\6r\1\0\v\14auto_fold\1\17auto_preview\2\17indent_lines\2\tmode\26workspace_diagnostics\vheight\3\n\nwidth\0032\15auto_close\2\nicons\2\rposition\vbottom\14auto_open\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsChangeNr\ttext\b┃\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b┃\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b┃\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b┃\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b┃\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\31show_current_context_start\1\tchar\b│\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0!\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\14\0005\4\b\0006\5\t\0009\5\n\0059\5\v\0059\5\f\5=\5\r\4=\4\15\0035\4\17\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\18\0035\4\19\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\20\0035\4\21\0006\5\t\0009\5\n\0059\5\v\0059\5\16\5=\5\r\4=\4\22\3=\3\23\2B\0\2\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\27\0'\4\28\0005\5\29\0B\0\5\0016\0\t\0009\0\24\0009\0\25\0'\2\26\0'\3\30\0'\4\31\0005\5 \0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\bset\vkeymap\15highlights\btab\1\0\0\tfill\1\0\0\15background\1\0\0\vbg_alt\20buffer_selected\1\0\0\nguibg\abg\14my_colors\6g\bvim\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\20show_close_icon\1\19indicator_icon\5\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
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
