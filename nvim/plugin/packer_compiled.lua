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
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n˚\2\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\21:BufferClose<CR>\abc\6n\20nvim_set_keymap\bapi\1\0\15\28icon_separator_inactive\5\26icon_separator_active\5\23icon_custom_colors\1\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\2\14animation\2\19maximum_length\3\30\20maximum_padding\3\1\18insert_at_end\2\nicons\2\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\5\15bufferline\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\nÂ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0õ\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\2\0\0\16prettier -w\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\n~\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\16Information\f#0db9d7\fWarning\f#e0af68\tHint\f#10B981\nError\f#db4b4b\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÀ\4\0\0\a\0\29\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\3\0005\5\v\0005\6\f\0=\6\r\5>\5\1\0045\5\14\0005\6\15\0=\6\16\0055\6\17\0=\6\18\5>\5\2\4=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0>\5\1\4=\4\23\0034\4\3\0005\5\24\0>\5\1\4=\4\25\3=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsymbols\1\0\4\nerror\bÔëÑ\twarn\bÔëÑ\tinfo\bÔëÑ\thint\bÔëÑ\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\ncolor\1\0\2\afg\f#f0f0f0\bgui\tbold\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\3\0\0\tmode\npaste\foptions\1\0\0\1\0\3\ntheme\17iceberg_dark\23section_separators\5\25component_separators\5\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neovim = {
    config = { "\27LJ\2\nÖ\3\0\0\3\0\14\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\n\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\v\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\f\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\r\0B\0\2\1K\0\1\0\27hi! Comment gui=italic!hi! link CursorLineNr Normal\30hi! NonText guifg=#000000\"hi! EndOfBuffer guifg=#000000\17nvim_command\bapi\26colorscheme rose-pine\bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/neovim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim£\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3Ä+\1\2\0L\1\2\0X\1\2Ä+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0ï\1\0\0\3\2\6\1\0236\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\fÄ-\0\1\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\1\0009\0\5\0D\0\1\0K\0\1\0\0¿\1¿\19compe#complete\n<Tab>\n<C-n>\15pumvisible\afn\bvim\2»\1\0\0\4\1\t\1\0266\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\15Ä6\0\0\0009\0\1\0009\0\4\0'\2\5\0005\3\6\0B\0\3\2\t\0\0\0X\0\4Ä-\0\0\0'\2\a\0D\0\2\0X\0\3Ä-\0\0\0'\2\b\0D\0\2\0K\0\1\0\0¿\f<S-Tab>\28<Plug>(vsnip-jump-prev)\1\2\0\0\3ˇˇˇˇ\15\19vsnip#jumpable\tcall\n<C-p>\15pumvisible\afn\bvim\2“\1\0\0\4\0\n\2\0236\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\2\t\1\0\0X\1\fÄ6\1\2\0009\1\3\0019\1\5\1B\1\1\0029\1\6\1\b\1\1\0X\1\5Ä6\1\2\0009\1\3\0019\1\a\1'\3\b\0D\1\2\0009\1\t\0D\1\1\0\26check_break_line_char\t<CR>\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\19nvim-autopairs\frequire\2˛ˇˇˇ\31∆\a\1\0\b\0(\1I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\0013\0\16\0003\1\17\0006\2\18\0003\3\20\0=\3\19\0026\2\18\0003\3\22\0=\3\21\0026\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5\26\0'\6\27\0005\a\28\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\29\0'\5\26\0'\6\27\0005\a\30\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\29\0'\5\31\0'\6 \0005\a\"\0B\2\5\0016\2\18\0003\3$\0=\3#\0026\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5%\0'\6&\0005\a'\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\24v:lua.completions()\t<CR>\0\16completions\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\1\0\6\tpath\2\fluasnip\2\nvsnip\2\rnvim_lua\2\vbuffer\2\rnvim_lsp\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\14min_width\3<\14max_width\3x\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\nsetup\ncompe\frequireÁÃô≥\6≥ÊÃ˛\3\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim·\a\1\2\n\0 \0<3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\1\18\4\2\0'\6\4\0'\a\5\0'\b\6\0005\t\a\0B\4\5\1\18\4\2\0'\6\4\0'\a\b\0'\b\t\0005\t\n\0B\4\5\1\18\4\2\0'\6\4\0'\a\v\0'\b\f\0005\t\r\0B\4\5\1\18\4\2\0'\6\4\0'\a\14\0'\b\15\0005\t\16\0B\4\5\1\18\4\2\0'\6\4\0'\a\17\0'\b\18\0005\t\19\0B\4\5\1\18\4\2\0'\6\4\0'\a\20\0'\b\21\0005\t\22\0B\4\5\1\18\4\2\0'\6\4\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0019\4\26\0009\4\27\4\15\0\4\0X\5\6Ä6\4\28\0009\4\29\0049\4\30\4'\6\31\0+\a\1\0B\4\3\0012\0\0ÄK\0\1\0¿\1            augroup lsp_formatting_sync\n              autocmd! * <buffer>\n              autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n            augroup END\n            \14nvim_exec\bapi\bvim\24document_formatting\26resolved_capabilities\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.formatting()<CR>\14<Leader>f\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\15<Leader>ca\1\0\2\vsilent\2\fnoremap\2&<cmd>lua vim.lsp.buf.rename()<CR>\15<Leader>rn\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<Leader>D\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>\1\0\2\vsilent\2\fnoremap\2%<Cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¿\1\0\0\n\3\b\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\0026\1\4\0\18\3\0\0B\1\2\4H\4\tÄ-\6\0\0008\6\5\0069\6\2\0065\b\5\0-\t\1\0=\t\6\b-\t\2\0=\t\a\bB\6\2\1F\4\3\3R\4ıK\0\1\0\0¿\1¿\2¿\17capabilities\14on_attach\1\0\0\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\3\1\3\0\a-\0\0\0B\0\1\0016\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\3¿\fbufdo e\bcmd\bvim©\a\1\0\t\0#\0D6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0029\3\a\0029\3\b\0039\3\t\3+\4\2\0=\4\n\0039\3\a\0029\3\b\0039\3\t\0035\4\r\0005\5\f\0=\5\14\4=\4\v\0033\3\15\0\18\4\3\0B\4\1\0016\4\0\0'\6\16\0B\4\2\0023\5\18\0=\5\17\0046\4\3\0009\4\4\0049\4\19\0046\5\3\0009\5\4\0059\5\21\0056\a\3\0009\a\4\a9\a\22\a9\a\23\a5\b\24\0B\5\3\2=\5\20\0046\4\3\0009\4\25\0049\4\26\4'\6\27\0005\a\28\0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6\29\0005\a\30\0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6\31\0005\a \0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6!\0005\a\"\0B\4\3\0012\0\0ÄK\0\1\0\1\0\2\nnumhl\30LspDiagnosticsDefaultHint\ttext\bÔëÑ\27LspDiagnosticsSignHint\1\0\2\nnumhl%LspDiagnosticsDefaultInformation\ttext\bÔëÑ\"LspDiagnosticsSignInformation\1\0\2\nnumhl!LspDiagnosticsDefaultWarning\ttext\bÔëÑ\30LspDiagnosticsSignWarning\1\0\2\nnumhl\31LspDiagnosticsDefaultError\ttext\bÔëÑ\28LspDiagnosticsSignError\16sign_define\afn\1\0\4\nsigns\2\21update_in_insert\2\17virtual_text\1\14underline\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\0\22post_install_hook\15lspinstall\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n‚\4\0\0\6\0\23\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0)\1\1\0=\1\b\0006\0\6\0009\0\a\0)\1\1\0=\1\t\0006\0\6\0009\0\a\0)\1\1\0=\1\n\0006\0\6\0009\0\a\0)\1\0\0=\1\v\0006\0\6\0009\0\a\0)\1\1\0=\1\f\0006\0\6\0009\0\a\0005\1\14\0=\1\r\0006\0\6\0009\0\a\0005\1\16\0=\1\15\0006\0\6\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\1\0\4\nfiles\3\1\bgit\3\1\ffolders\3\0\18folder_arrows\3\1\25nvim_tree_show_icons\1\f\0\0\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\t.git\n.nuxt\17node_modules\v.cache\t~*.*\14.DS_Store\21nvim_tree_ignore%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\6g\bvim\tview\1\0\0\1\0\1\nwidth\3(\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¸\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\22\0005\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\1\0\4\aif\20@function.inner\aac\17@class.outer\aaf\20@function.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¡\4\0\0\6\0\24\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\21\0'\4\22\0005\5\23\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0024:lua require(\"telescope.builtin\").buffers()<CR>\abb\1\0\2\vsilent\2\fnoremap\0026:lua require(\"telescope.builtin\").live_grep()<CR>\afg\1\0\2\vsilent\2\fnoremap\0027:lua require(\"telescope.builtin\").find_files()<CR>\aff\1\0\2\vsilent\2\fnoremap\2::lua require(\"telescope.builtin\").spell_suggest()<CR>\ass\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\2\0\0\17node_modules\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nò\5\0\0\6\0\23\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\29<cmd>Trouble loclist<cr>\atl\1\0\2\vsilent\2\fnoremap\2\21<cmd>Trouble<cr>\att\6n\20nvim_set_keymap\bapi\bvim\nsigns\1\0\5\fwarning\bÔëÑ\nother\bÔëÑ\thint\bÔëÑ\16information\bÔëÑ\nerror\bÔëÑ\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\r\vheight\3\n\16fold_closed\bÔë†\nwidth\0032\14fold_open\bÔëº\tmode\30lsp_workspace_diagnostics\nicons\2\17auto_preview\2\rposition\vbottom\14auto_open\1\17indent_lines\2\15auto_close\2\14auto_fold\1\29use_lsp_diagnostic_signs\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-hexokinase"] = {
    commands = { "HexokinaseToggle" },
    config = { "\27LJ\2\n’\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0K\0\1\0\1\6\0\0\blua\bcss\thtml\15javascript\bvue\25Hexokinase_ftEnabled\1\2\0\0\19backgroundfull\28Hexokinase_highlighters\31full_hex,rgb,rgba,hsl,hsla\29Hexokinase_optInPatterns\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/vim-hexokinase"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n‚\4\0\0\6\0\23\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0)\1\1\0=\1\b\0006\0\6\0009\0\a\0)\1\1\0=\1\t\0006\0\6\0009\0\a\0)\1\1\0=\1\n\0006\0\6\0009\0\a\0)\1\0\0=\1\v\0006\0\6\0009\0\a\0)\1\1\0=\1\f\0006\0\6\0009\0\a\0005\1\14\0=\1\r\0006\0\6\0009\0\a\0005\1\16\0=\1\15\0006\0\6\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\1\0\4\nfiles\3\1\bgit\3\1\ffolders\3\0\18folder_arrows\3\1\25nvim_tree_show_icons\1\f\0\0\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\t.git\n.nuxt\17node_modules\v.cache\t~*.*\14.DS_Store\21nvim_tree_ignore%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\6g\bvim\tview\1\0\0\1\0\1\nwidth\3(\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\16Information\f#0db9d7\fWarning\f#e0af68\tHint\f#10B981\nError\f#db4b4b\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÀ\4\0\0\a\0\29\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\3\0005\5\v\0005\6\f\0=\6\r\5>\5\1\0045\5\14\0005\6\15\0=\6\16\0055\6\17\0=\6\18\5>\5\2\4=\4\19\0035\4\20\0=\4\21\0034\4\3\0005\5\22\0>\5\1\4=\4\23\0034\4\3\0005\5\24\0>\5\1\4=\4\25\3=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsymbols\1\0\4\nerror\bÔëÑ\twarn\bÔëÑ\tinfo\bÔëÑ\thint\bÔëÑ\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\ncolor\1\0\2\afg\f#f0f0f0\bgui\tbold\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\3\0\0\tmode\npaste\foptions\1\0\0\1\0\3\ntheme\17iceberg_dark\23section_separators\5\25component_separators\5\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\nÖ\3\0\0\3\0\14\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\n\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\v\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\f\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\r\0B\0\2\1K\0\1\0\27hi! Comment gui=italic!hi! link CursorLineNr Normal\30hi! NonText guifg=#000000\"hi! EndOfBuffer guifg=#000000\17nvim_command\bapi\26colorscheme rose-pine\bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0", "config", "neovim")
time([[Config for neovim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n˚\2\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\21:BufferClose<CR>\abc\6n\20nvim_set_keymap\bapi\1\0\15\28icon_separator_inactive\5\26icon_separator_active\5\23icon_custom_colors\1\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\2\14animation\2\19maximum_length\3\30\20maximum_padding\3\1\18insert_at_end\2\nicons\2\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\5\15bufferline\6g\bvim\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: format.nvim
time([[Config for format.nvim]], true)
try_loadstring("\27LJ\2\nÂ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0õ\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\2\0\0\16prettier -w\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0", "config", "format.nvim")
time([[Config for format.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nò\5\0\0\6\0\23\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\vsilent\2\fnoremap\2\29<cmd>Trouble loclist<cr>\atl\1\0\2\vsilent\2\fnoremap\2\21<cmd>Trouble<cr>\att\6n\20nvim_set_keymap\bapi\bvim\nsigns\1\0\5\fwarning\bÔëÑ\nother\bÔëÑ\thint\bÔëÑ\16information\bÔëÑ\nerror\bÔëÑ\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\r\vheight\3\n\16fold_closed\bÔë†\nwidth\0032\14fold_open\bÔëº\tmode\30lsp_workspace_diagnostics\nicons\2\17auto_preview\2\rposition\vbottom\14auto_open\1\17indent_lines\2\15auto_close\2\14auto_fold\1\29use_lsp_diagnostic_signs\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¸\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\22\0005\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\1\0\4\aif\20@function.inner\aac\17@class.outer\aaf\20@function.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim£\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3Ä+\1\2\0L\1\2\0X\1\2Ä+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0ï\1\0\0\3\2\6\1\0236\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\fÄ-\0\1\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\1\0009\0\5\0D\0\1\0K\0\1\0\0¿\1¿\19compe#complete\n<Tab>\n<C-n>\15pumvisible\afn\bvim\2»\1\0\0\4\1\t\1\0266\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\15Ä6\0\0\0009\0\1\0009\0\4\0'\2\5\0005\3\6\0B\0\3\2\t\0\0\0X\0\4Ä-\0\0\0'\2\a\0D\0\2\0X\0\3Ä-\0\0\0'\2\b\0D\0\2\0K\0\1\0\0¿\f<S-Tab>\28<Plug>(vsnip-jump-prev)\1\2\0\0\3ˇˇˇˇ\15\19vsnip#jumpable\tcall\n<C-p>\15pumvisible\afn\bvim\2“\1\0\0\4\0\n\2\0236\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\2\t\1\0\0X\1\fÄ6\1\2\0009\1\3\0019\1\5\1B\1\1\0029\1\6\1\b\1\1\0X\1\5Ä6\1\2\0009\1\3\0019\1\a\1'\3\b\0D\1\2\0009\1\t\0D\1\1\0\26check_break_line_char\t<CR>\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\19nvim-autopairs\frequire\2˛ˇˇˇ\31∆\a\1\0\b\0(\1I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\0013\0\16\0003\1\17\0006\2\18\0003\3\20\0=\3\19\0026\2\18\0003\3\22\0=\3\21\0026\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5\26\0'\6\27\0005\a\28\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\29\0'\5\26\0'\6\27\0005\a\30\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\t\0009\2\23\0029\2\24\2'\4\29\0'\5\31\0'\6 \0005\a\"\0B\2\5\0016\2\18\0003\3$\0=\3#\0026\2\t\0009\2\23\0029\2\24\2'\4\25\0'\5%\0'\6&\0005\a'\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\24v:lua.completions()\t<CR>\0\16completions\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\1\0\6\tpath\2\fluasnip\2\nvsnip\2\rnvim_lua\2\vbuffer\2\rnvim_lsp\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\14min_width\3<\14max_width\3x\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\nsetup\ncompe\frequireÁÃô≥\6≥ÊÃ˛\3\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¡\4\0\0\6\0\24\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\21\0'\4\22\0005\5\23\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0024:lua require(\"telescope.builtin\").buffers()<CR>\abb\1\0\2\vsilent\2\fnoremap\0026:lua require(\"telescope.builtin\").live_grep()<CR>\afg\1\0\2\vsilent\2\fnoremap\0027:lua require(\"telescope.builtin\").find_files()<CR>\aff\1\0\2\vsilent\2\fnoremap\2::lua require(\"telescope.builtin\").spell_suggest()<CR>\ass\6n\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\2\0\0\17node_modules\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim·\a\1\2\n\0 \0<3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\1\18\4\2\0'\6\4\0'\a\5\0'\b\6\0005\t\a\0B\4\5\1\18\4\2\0'\6\4\0'\a\b\0'\b\t\0005\t\n\0B\4\5\1\18\4\2\0'\6\4\0'\a\v\0'\b\f\0005\t\r\0B\4\5\1\18\4\2\0'\6\4\0'\a\14\0'\b\15\0005\t\16\0B\4\5\1\18\4\2\0'\6\4\0'\a\17\0'\b\18\0005\t\19\0B\4\5\1\18\4\2\0'\6\4\0'\a\20\0'\b\21\0005\t\22\0B\4\5\1\18\4\2\0'\6\4\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0019\4\26\0009\4\27\4\15\0\4\0X\5\6Ä6\4\28\0009\4\29\0049\4\30\4'\6\31\0+\a\1\0B\4\3\0012\0\0ÄK\0\1\0¿\1            augroup lsp_formatting_sync\n              autocmd! * <buffer>\n              autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n            augroup END\n            \14nvim_exec\bapi\bvim\24document_formatting\26resolved_capabilities\1\0\2\vsilent\2\fnoremap\2*<cmd>lua vim.lsp.buf.formatting()<CR>\14<Leader>f\1\0\2\vsilent\2\fnoremap\2+<cmd>lua vim.lsp.buf.code_action()<CR>\15<Leader>ca\1\0\2\vsilent\2\fnoremap\2&<cmd>lua vim.lsp.buf.rename()<CR>\15<Leader>rn\1\0\2\vsilent\2\fnoremap\2/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<Leader>D\1\0\2\vsilent\2\fnoremap\2.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>\1\0\2\vsilent\2\fnoremap\2%<Cmd>lua vim.lsp.buf.hover()<CR>\6K\1\0\2\vsilent\2\fnoremap\2+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0¿\1\0\0\n\3\b\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\0026\1\4\0\18\3\0\0B\1\2\4H\4\tÄ-\6\0\0008\6\5\0069\6\2\0065\b\5\0-\t\1\0=\t\6\b-\t\2\0=\t\a\bB\6\2\1F\4\3\3R\4ıK\0\1\0\0¿\1¿\2¿\17capabilities\14on_attach\1\0\0\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\3\1\3\0\a-\0\0\0B\0\1\0016\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\3¿\fbufdo e\bcmd\bvim©\a\1\0\t\0#\0D6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0029\3\a\0029\3\b\0039\3\t\3+\4\2\0=\4\n\0039\3\a\0029\3\b\0039\3\t\0035\4\r\0005\5\f\0=\5\14\4=\4\v\0033\3\15\0\18\4\3\0B\4\1\0016\4\0\0'\6\16\0B\4\2\0023\5\18\0=\5\17\0046\4\3\0009\4\4\0049\4\19\0046\5\3\0009\5\4\0059\5\21\0056\a\3\0009\a\4\a9\a\22\a9\a\23\a5\b\24\0B\5\3\2=\5\20\0046\4\3\0009\4\25\0049\4\26\4'\6\27\0005\a\28\0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6\29\0005\a\30\0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6\31\0005\a \0B\4\3\0016\4\3\0009\4\25\0049\4\26\4'\6!\0005\a\"\0B\4\3\0012\0\0ÄK\0\1\0\1\0\2\nnumhl\30LspDiagnosticsDefaultHint\ttext\bÔëÑ\27LspDiagnosticsSignHint\1\0\2\nnumhl%LspDiagnosticsDefaultInformation\ttext\bÔëÑ\"LspDiagnosticsSignInformation\1\0\2\nnumhl!LspDiagnosticsDefaultWarning\ttext\bÔëÑ\30LspDiagnosticsSignWarning\1\0\2\nnumhl\31LspDiagnosticsDefaultError\ttext\bÔëÑ\28LspDiagnosticsSignError\16sign_define\afn\1\0\4\nsigns\2\21update_in_insert\2\17virtual_text\1\14underline\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\0\22post_install_hook\15lspinstall\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HexokinaseToggle lua require("packer.load")({'vim-hexokinase'}, { cmd = "HexokinaseToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
