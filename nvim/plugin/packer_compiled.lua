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
  local success, result = pcall(loadstring(s))
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
  ["format.nvim"] = {
    config = { "\27LJ\2\nÎ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-guides.nvim"] = {
    config = { "\27LJ\2\n∆\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\abg\f#000000\afg\f#0F1117\16even_colors\1\0\2\abg\f#0F1117\afg\f#000000\1\0\2\24indent_soft_pattern\a\\s\22indent_guide_size\3\2\nsetup\18indent_guides\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/indent-guides.nvim",
    url = "https://github.com/glepnir/indent-guides.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÇ\a\0\0\t\0-\0c'\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\2\4\2'\3\6\0=\3\5\0029\2\3\0019\2\4\2=\0\a\0029\2\3\0019\2\b\2=\0\a\0029\2\t\0019\2\4\2'\3\n\0=\3\5\0029\2\t\0019\2\4\2=\0\a\0029\2\t\0019\2\b\2=\0\a\0029\2\v\0019\2\4\2=\0\5\0029\2\v\0019\2\4\2=\0\a\0029\2\v\0019\2\b\2=\0\a\0029\2\v\0019\2\f\2=\0\a\0029\2\r\0019\2\4\2'\3\14\0=\3\5\0029\2\r\0019\2\4\2=\0\a\0029\2\r\0019\2\b\2=\0\a\0029\2\r\0019\2\f\2=\0\a\0029\2\15\0019\2\4\2'\3\16\0=\3\5\0029\2\15\0019\2\4\2=\0\a\0029\2\15\0019\2\b\2=\0\a\0026\2\1\0'\4\17\0B\2\2\0029\2\18\0025\4\21\0005\5\19\0=\1\20\5=\5\22\0045\5\26\0005\6\23\0005\a\24\0=\a\25\6=\6\27\0055\6\28\0=\6\29\0054\6\3\0005\a\30\0005\b\31\0=\b\25\a>\a\1\0065\a \0005\b!\0=\b\"\a>\a\2\6=\6#\0055\6$\0=\6%\0054\6\3\0005\a&\0>\a\1\6=\6'\0054\6\3\0005\a(\0>\a\1\6=\6)\5=\5*\0045\5+\0=\5,\4B\2\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\2\bgui\tbold\afg\f#f0f0f0\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\3\0\0\tmode\npaste\foptions\1\0\0\ntheme\1\0\2\23section_separators\6 \25component_separators\6 \nsetup\flualine\f#61afef\vinsert\f#98c379\vnormal\6c\rinactive\f#e06c75\freplace\6b\abg\f#c678dd\afg\6a\vvisual lualine.themes.iceberg_dark\frequire\f#0F1117\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n…\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\19indicator_icon\5\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\tjump\rjumpable\21select_prev_item\fvisible±\5\1\0\v\0-\0N6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0029\3\b\0025\5\f\0005\6\n\0003\a\t\0=\a\v\6=\6\r\0055\6\16\0009\a\14\0029\a\15\aB\a\1\2=\a\17\0069\a\14\0029\a\18\aB\a\1\2=\a\19\0069\a\14\0029\a\20\a)\t¸ˇB\a\2\2=\a\21\0069\a\14\0029\a\20\a)\t\4\0B\a\2\2=\a\22\0069\a\14\0029\a\23\aB\a\1\2=\a\24\0069\a\14\0029\a\25\aB\a\1\2=\a\26\0069\a\14\0029\a\27\a5\t\30\0009\n\28\0029\n\29\n=\n\31\tB\a\2\2=\a \0069\a\14\0023\t!\0005\n\"\0B\a\3\2=\a#\0069\a\14\0023\t$\0005\n%\0B\a\3\2=\a&\6=\6\14\0054\6\6\0005\a'\0>\a\1\0065\a(\0>\a\2\0065\a)\0>\a\3\0065\a*\0>\a\4\0065\a+\0>\a\5\6=\6,\5B\3\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\forgmode\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
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
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¡\2\1\0\r\0\17\0 6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\v5\f\15\0=\f\16\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nº\b\0\0\6\0'\0?6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\3\0=\1\5\0006\0\0\0009\0\1\0)\1Ù\1=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\b\0=\2\n\0015\2\v\0=\2\f\1=\1\a\0006\0\0\0009\0\1\0005\1\14\0=\1\r\0006\0\0\0009\0\1\0005\1\16\0005\2\17\0=\2\18\0015\2\19\0=\2\20\1=\1\15\0006\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2\25\0005\3\24\0=\3\26\0025\3\27\0005\4\28\0=\4\29\3=\3\30\0025\3\31\0=\3 \2B\0\2\0016\0\0\0009\0!\0009\0\"\0'\2#\0'\3$\0'\4%\0005\5&\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\16auto_resize\2\nwidth\b30%\ffilters\vcustom\1\n\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\17arrow_closed\bÔë†\fdefault\bÔë†\15arrow_open\bÔëº\nempty\bÔë†\topen\bÔëº\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\bgit\1\0\a\14untracked\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\ffolders\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireÄ\n\1\0\a\0001\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\23\0005\5\22\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0005\6\28\0=\6\14\5=\5\29\0045\5\30\0005\6\31\0=\6\14\5=\5 \4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\4=\4+\3=\3,\2B\0\2\0016\0\0\0'\2-\0B\0\2\0029\0\2\0005\2/\0003\3.\0=\0030\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\nÊ\1\0\0\3\0\n\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire#onedark_transparent_background\31onedark_hide_ending_tildes\"onedark_diagnostics_undercurl\tdeep\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\n¬\4\0\0\6\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\16\0005\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\17\0035\4\18\0=\4\19\3B\1\2\0016\1\0\0'\3\20\0B\1\2\0029\1\n\0015\3\22\0005\4\21\0=\4\23\3B\1\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\29~/Dropbox/org/refile.org\1\3\0\0\20~/Dropbox/org/*\19~/my-orgs/**/*\forgmode\21ensure_installed\1\2\0\0\borg\14highlight\1\0\0&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/orgmode.nvim",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
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
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÅ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2¡\3\1\0\5\0\16\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0026\3\b\0009\3\t\0039\3\n\3=\3\n\2B\0\2\0016\0\v\0003\1\r\0=\1\f\0006\0\b\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\4\vborder\vdouble\vheight\3\18\nwidth\3A\rwinblend\3\3\1\0\b\17open_mapping\n<c-t>\14direction\nfloat\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\17hide_numbers\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nÈ\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\frefresh\6r\vcancel\n<esc>\1\0\v\15auto_close\2\14auto_open\1\17indent_lines\2\nwidth\0032\vheight\3\n\17auto_preview\2\nicons\1\rposition\vbottom\29use_lsp_diagnostic_signs\2\14auto_fold\1\tmode\30lsp_workspace_diagnostics\nsetup\ftrouble\frequire\0" },
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
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\tjump\rjumpable\21select_prev_item\fvisible±\5\1\0\v\0-\0N6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0029\3\b\0025\5\f\0005\6\n\0003\a\t\0=\a\v\6=\6\r\0055\6\16\0009\a\14\0029\a\15\aB\a\1\2=\a\17\0069\a\14\0029\a\18\aB\a\1\2=\a\19\0069\a\14\0029\a\20\a)\t¸ˇB\a\2\2=\a\21\0069\a\14\0029\a\20\a)\t\4\0B\a\2\2=\a\22\0069\a\14\0029\a\23\aB\a\1\2=\a\24\0069\a\14\0029\a\25\aB\a\1\2=\a\26\0069\a\14\0029\a\27\a5\t\30\0009\n\28\0029\n\29\n=\n\31\tB\a\2\2=\a \0069\a\14\0023\t!\0005\n\"\0B\a\3\2=\a#\0069\a\14\0023\t$\0005\n%\0B\a\3\2=\a&\6=\6\14\0054\6\6\0005\a'\0>\a\1\0065\a(\0>\a\2\0065\a)\0>\a\3\0065\a*\0>\a\4\0065\a+\0>\a\5\6=\6,\5B\3\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\forgmode\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
try_loadstring("\27LJ\2\n∆\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\abg\f#000000\afg\f#0F1117\16even_colors\1\0\2\abg\f#0F1117\afg\f#000000\1\0\2\24indent_soft_pattern\a\\s\22indent_guide_size\3\2\nsetup\18indent_guides\frequire\0", "config", "indent-guides.nvim")
time([[Config for indent-guides.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireÄ\n\1\0\a\0001\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\23\0005\5\22\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0005\6\28\0=\6\14\5=\5\29\0045\5\30\0005\6\31\0=\6\14\5=\5 \4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\4=\4+\3=\3,\2B\0\2\0016\0\0\0'\2-\0B\0\2\0029\0\2\0005\2/\0003\3.\0=\0030\2B\0\2\1K\0\1\0\thook\1\0\0\0\17nvim_comment\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\21list_definitions\bgnD\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\vselect\1\0\0\1\0\4\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÇ\a\0\0\t\0-\0c'\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\2\4\2'\3\6\0=\3\5\0029\2\3\0019\2\4\2=\0\a\0029\2\3\0019\2\b\2=\0\a\0029\2\t\0019\2\4\2'\3\n\0=\3\5\0029\2\t\0019\2\4\2=\0\a\0029\2\t\0019\2\b\2=\0\a\0029\2\v\0019\2\4\2=\0\5\0029\2\v\0019\2\4\2=\0\a\0029\2\v\0019\2\b\2=\0\a\0029\2\v\0019\2\f\2=\0\a\0029\2\r\0019\2\4\2'\3\14\0=\3\5\0029\2\r\0019\2\4\2=\0\a\0029\2\r\0019\2\b\2=\0\a\0029\2\r\0019\2\f\2=\0\a\0029\2\15\0019\2\4\2'\3\16\0=\3\5\0029\2\15\0019\2\4\2=\0\a\0029\2\15\0019\2\b\2=\0\a\0026\2\1\0'\4\17\0B\2\2\0029\2\18\0025\4\21\0005\5\19\0=\1\20\5=\5\22\0045\5\26\0005\6\23\0005\a\24\0=\a\25\6=\6\27\0055\6\28\0=\6\29\0054\6\3\0005\a\30\0005\b\31\0=\b\25\a>\a\1\0065\a \0005\b!\0=\b\"\a>\a\2\6=\6#\0055\6$\0=\6%\0054\6\3\0005\a&\0>\a\1\6=\6'\0054\6\3\0005\a(\0>\a\1\6=\6)\5=\5*\0045\5+\0=\5,\4B\2\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\2\bgui\tbold\afg\f#f0f0f0\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\3\0\0\tmode\npaste\foptions\1\0\0\ntheme\1\0\2\23section_separators\6 \25component_separators\6 \nsetup\flualine\f#61afef\vinsert\f#98c379\vnormal\6c\rinactive\f#e06c75\freplace\6b\abg\f#c678dd\afg\6a\vvisual lualine.themes.iceberg_dark\frequire\f#0F1117\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nÊ\1\0\0\3\0\n\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire#onedark_transparent_background\31onedark_hide_ending_tildes\"onedark_diagnostics_undercurl\tdeep\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nÈ\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\nclose\6q\frefresh\6r\vcancel\n<esc>\1\0\v\15auto_close\2\14auto_open\1\17indent_lines\2\nwidth\0032\vheight\3\n\17auto_preview\2\nicons\1\rposition\vbottom\29use_lsp_diagnostic_signs\2\14auto_fold\1\tmode\30lsp_workspace_diagnostics\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: format.nvim
time([[Config for format.nvim]], true)
try_loadstring("\27LJ\2\nÎ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0", "config", "format.nvim")
time([[Config for format.nvim]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\n¬\4\0\0\6\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\16\0005\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\17\0035\4\18\0=\4\19\3B\1\2\0016\1\0\0'\3\20\0B\1\2\0029\1\n\0015\3\22\0005\4\21\0=\4\23\3B\1\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\29~/Dropbox/org/refile.org\1\3\0\0\20~/Dropbox/org/*\19~/my-orgs/**/*\forgmode\21ensure_installed\1\2\0\0\borg\14highlight\1\0\0&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¡\2\1\0\r\0\17\0 6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\bÄ8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\v5\f\15\0=\f\16\vB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvuels\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2¡\3\1\0\5\0\16\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0026\3\b\0009\3\t\0039\3\n\3=\3\n\2B\0\2\0016\0\v\0003\1\r\0=\1\f\0006\0\b\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\6o\bvim\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\4\vborder\vdouble\vheight\3\18\nwidth\3A\rwinblend\3\3\1\0\b\17open_mapping\n<c-t>\14direction\nfloat\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\17hide_numbers\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n…\4\0\0\6\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0005\5\24\0B\0\5\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\25\0'\4\26\0005\5\27\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30:BufferLineCloseRight<CR>\abr\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCloseLeft<CR>\abl\6n\20nvim_set_keymap\bapi\bvim\15highlights\btab\1\0\1\nguibg\f#0F1117\tfill\1\0\1\nguibg\f#0F1117\15background\1\0\1\nguibg\f#0F1117\20buffer_selected\1\0\0\1\0\1\bgui\tbold\foptions\1\0\0\20separator_style\1\3\0\0\5\5\1\0\a\rtab_size\3\22\20max_name_length\3\22\27always_show_bufferline\1\25enforce_regular_tabs\2\28show_buffer_close_icons\1\20show_close_icon\1\19indicator_icon\5\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetupO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nº\b\0\0\6\0'\0?6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\3\0=\1\5\0006\0\0\0009\0\1\0)\1Ù\1=\1\6\0006\0\0\0009\0\1\0005\1\t\0005\2\b\0=\2\n\0015\2\v\0=\2\f\1=\1\a\0006\0\0\0009\0\1\0005\1\14\0=\1\r\0006\0\0\0009\0\1\0005\1\16\0005\2\17\0=\2\18\0015\2\19\0=\2\20\1=\1\15\0006\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2\25\0005\3\24\0=\3\26\0025\3\27\0005\4\28\0=\4\29\3=\3\30\0025\3\31\0=\3 \2B\0\2\0016\0\0\0009\0!\0009\0\"\0'\2#\0'\3$\0'\4%\0005\5&\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\2\16auto_resize\2\nwidth\b30%\ffilters\vcustom\1\n\0\0\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\17node_modules\20babel.config.js\1\0\1\rdotfiles\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\vfolder\1\0\b\17arrow_closed\bÔë†\fdefault\bÔë†\15arrow_open\bÔëº\nempty\bÔë†\topen\bÔëº\17symlink_open\bÔëº\15empty_open\bÔëº\fsymlink\bÔë†\bgit\1\0\a\14untracked\bÔëÑ\frenamed\bÔïì\fignored\b‚óå\runmerged\bÓúß\vstaged\bÔò´\fdeleted\bÔëÑ\runstaged\bÔëÑ\1\0\2\fdefault\tÓòí \fsymlink\tÔíÅ \20nvim_tree_icons\1\0\4\bgit\3\1\ffolders\3\1\nfiles\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\3\0\0\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
