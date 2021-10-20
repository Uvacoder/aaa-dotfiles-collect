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
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n¡\2\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\21:BufferClose<CR>\abc\6n\20nvim_set_keymap\bapi\1\0\v\19icon_close_tab\5\19maximum_length\3\30\20maximum_padding\3\1\18insert_at_end\2\14auto_hide\2\28icon_close_tab_modified\b‚óè\rclosable\2\rtabpages\2\26icon_separator_active\5\nicons\2\28icon_separator_inactive\5\15bufferline\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\nÎ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\16end_pattern\n^```$\18start_pattern\16^```python$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÇ\a\0\0\t\0-\0c'\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\2\4\2'\3\6\0=\3\5\0029\2\3\0019\2\4\2=\0\a\0029\2\3\0019\2\b\2=\0\a\0029\2\t\0019\2\4\2'\3\n\0=\3\5\0029\2\t\0019\2\4\2=\0\a\0029\2\t\0019\2\b\2=\0\a\0029\2\v\0019\2\4\2=\0\5\0029\2\v\0019\2\4\2=\0\a\0029\2\v\0019\2\b\2=\0\a\0029\2\v\0019\2\f\2=\0\a\0029\2\r\0019\2\4\2'\3\14\0=\3\5\0029\2\r\0019\2\4\2=\0\a\0029\2\r\0019\2\b\2=\0\a\0029\2\r\0019\2\f\2=\0\a\0029\2\15\0019\2\4\2'\3\16\0=\3\5\0029\2\15\0019\2\4\2=\0\a\0029\2\15\0019\2\b\2=\0\a\0026\2\1\0'\4\17\0B\2\2\0029\2\18\0025\4\21\0005\5\19\0=\1\20\5=\5\22\0045\5\26\0005\6\23\0005\a\24\0=\a\25\6=\6\27\0055\6\28\0=\6\29\0054\6\3\0005\a\30\0005\b\31\0=\b\25\a>\a\1\0065\a \0005\b!\0=\b\"\a>\a\2\6=\6#\0055\6$\0=\6%\0054\6\3\0005\a&\0>\a\1\6=\6'\0054\6\3\0005\a(\0>\a\1\6=\6)\5=\5*\0045\5+\0=\5,\4B\2\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\2\afg\f#f0f0f0\bgui\tbold\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\3\0\0\tmode\npaste\foptions\1\0\0\ntheme\1\0\2\23section_separators\6 \25component_separators\6 \nsetup\flualine\f#61afef\vinsert\f#98c379\vnormal\6c\rinactive\f#e06c75\freplace\6b\abg\f#c678dd\afg\6a\vvisual lualine.themes.iceberg_dark\frequire\f#0F1117\0" },
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
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¡\r\0\2\n\0,\0¶\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0006\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0'\b\t\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\f\0'\b\r\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\26\0'\b\27\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\28\0'\b\29\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\30\0'\b\31\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a \0'\b!\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\"\0'\b#\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a$\0'\b%\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a&\0'\b'\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a(\0'\b)\0\18\t\2\0B\3\6\0016\3\0\0009\3*\3'\5+\0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5¿\21select_prev_item\fvisibleX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetup‡\b\1\0\14\0;\0n6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\6Ä8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\vB\t\2\1E\a\3\3R\a¯6\4\3\0009\4\15\4'\5\17\0=\5\16\0046\4\0\0'\6\18\0B\4\2\0026\5\0\0'\a\19\0B\5\2\0029\6\v\0055\b\23\0005\t\21\0003\n\20\0=\n\22\t=\t\24\b5\t\27\0009\n\25\0059\n\26\nB\n\1\2=\n\28\t9\n\25\0059\n\29\nB\n\1\2=\n\30\t9\n\25\0059\n\31\n)\f¸ˇB\n\2\2=\n \t9\n\25\0059\n\31\n)\f\4\0B\n\2\2=\n!\t9\n\25\0059\n\"\nB\n\1\2=\n#\t9\n\25\0059\n$\nB\n\1\2=\n%\t9\n\25\0059\n&\n5\f)\0009\r'\0059\r(\r=\r*\fB\n\2\2=\n+\t3\n,\0=\n-\t3\n.\0=\n/\t=\t\25\b4\t\5\0005\n0\0>\n\1\t5\n1\0>\n\2\t5\n2\0>\n\3\t5\n3\0>\n\4\t=\t4\bB\6\2\0016\6\0\0'\b5\0B\6\2\0029\a6\0063\t7\0B\a\2\0016\a\3\0009\a8\a9\a9\a'\t:\0+\n\1\0B\a\3\0012\0\0ÄK\0\1\0õ\1          augroup YankHighlight\n          autocmd!\n          autocmd TextYankPost * silent! lua vim.highlight.on_yank()\n          augroup end\n        \14nvim_exec\bapi\0\20on_server_ready\23nvim-lsp-installer\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\né\5\0\0\6\0\23\0-6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\15\0005\3\14\0=\3\16\2B\0\2\0016\0\0\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\0\1\0\1\nwidth\3(\nsetup\14nvim-tree\frequire\1\0\4\nfiles\3\1\bgit\3\1\18folder_arrows\3\0\ffolders\3\1\25nvim_tree_show_icons\1\16\0\0\f.quasar\f.vscode\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\t.git\n.nuxt\17node_modules\v.cache\t~*.*\14.DS_Store\21nvim_tree_ignore%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¸\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\22\0005\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÅ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2ı\2\1\0\4\0\14\1\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0006\3\3\0009\3\4\0039\3\5\3\24\3\0\3=\3\a\0026\3\3\0009\3\4\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\3\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\tsize\1\0\b\14direction\rvertical\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\17hide_numbers\2\17open_mapping\n<c-\\>\18close_on_exit\2\fcolumns\6o\bvim\nsetup\15toggleterm\frequire\1ÄÄÄˇ\3\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nÈ\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\v\14auto_fold\1\29use_lsp_diagnostic_signs\2\tmode\30lsp_workspace_diagnostics\nicons\1\rposition\vbottom\vheight\3\n\nwidth\0032\17auto_preview\2\15auto_close\2\14auto_open\1\17indent_lines\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: format.nvim
time([[Config for format.nvim]], true)
try_loadstring("\27LJ\2\nÎ\5\0\0\6\0#\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\2B\0\2\0016\0\31\0009\0 \0009\0!\0'\2\"\0+\3\2\0B\0\3\1K\0\1\0®\1          augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite\n          augroup END\n        \14nvim_exec\bapi\bvim\rmarkdown\1\0\3\16end_pattern\n^```$\18start_pattern\16^```python$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\blua\1\0\0\1\2\0\0\15stylua %s \tjson\1\0\0\1\2\0\0\16prettier -w\bcss\1\0\0\1\2\0\0\16prettier -w\bsvg\1\0\0\1\2\0\0\16prettier -w\thtml\1\0\0\1\2\0\0\16prettier -w\bvue\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\bcmd\1\0\0\1\2\0\0\16prettier -w\nsetup\vformat\frequire\0", "config", "format.nvim")
time([[Config for format.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¡\r\0\2\n\0,\0¶\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0006\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0'\b\t\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\f\0'\b\r\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\26\0'\b\27\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\28\0'\b\29\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\30\0'\b\31\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a \0'\b!\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a\"\0'\b#\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a$\0'\b%\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a&\0'\b'\0\18\t\2\0B\3\6\0016\3\0\0009\3\1\0039\3\6\3\18\5\1\0'\6\a\0'\a(\0'\b)\0\18\t\2\0B\3\6\0016\3\0\0009\3*\3'\5+\0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5¿\21select_prev_item\fvisibleX\0\1\6\0\4\0\n4\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\2'\4\3\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\bvim\nsetup‡\b\1\0\14\0;\0n6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0005\3\t\0006\4\n\0\18\6\3\0B\4\2\4X\a\6Ä8\t\b\0009\t\v\t5\v\f\0=\1\r\v=\2\14\vB\t\2\1E\a\3\3R\a¯6\4\3\0009\4\15\4'\5\17\0=\5\16\0046\4\0\0'\6\18\0B\4\2\0026\5\0\0'\a\19\0B\5\2\0029\6\v\0055\b\23\0005\t\21\0003\n\20\0=\n\22\t=\t\24\b5\t\27\0009\n\25\0059\n\26\nB\n\1\2=\n\28\t9\n\25\0059\n\29\nB\n\1\2=\n\30\t9\n\25\0059\n\31\n)\f¸ˇB\n\2\2=\n \t9\n\25\0059\n\31\n)\f\4\0B\n\2\2=\n!\t9\n\25\0059\n\"\nB\n\1\2=\n#\t9\n\25\0059\n$\nB\n\1\2=\n%\t9\n\25\0059\n&\n5\f)\0009\r'\0059\r(\r=\r*\fB\n\2\2=\n+\t3\n,\0=\n-\t3\n.\0=\n/\t=\t\25\b4\t\5\0005\n0\0>\n\1\t5\n1\0>\n\2\t5\n2\0>\n\3\t5\n3\0>\n\4\t=\t4\bB\6\2\0016\6\0\0'\b5\0B\6\2\0029\a6\0063\t7\0B\a\2\0016\a\3\0009\a8\a9\a9\a'\t:\0+\n\1\0B\a\3\0012\0\0ÄK\0\1\0õ\1          augroup YankHighlight\n          autocmd!\n          autocmd TextYankPost * silent! lua vim.highlight.on_yank()\n          augroup end\n        \14nvim_exec\bapi\0\20on_server_ready\23nvim-lsp-installer\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\1\0\1\tname\tpath\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\3\0\0\nvolar\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\nÖ\3\0\0\3\0\14\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\n\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\v\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\f\0B\0\2\0016\0\0\0009\0\b\0009\0\t\0'\2\r\0B\0\2\1K\0\1\0\27hi! Comment gui=italic!hi! link CursorLineNr Normal\30hi! NonText guifg=#000000\"hi! EndOfBuffer guifg=#000000\17nvim_command\bapi\26colorscheme rose-pine\bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0", "config", "neovim")
time([[Config for neovim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n¡\2\0\0\6\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\21:BufferClose<CR>\abc\6n\20nvim_set_keymap\bapi\1\0\v\19icon_close_tab\5\19maximum_length\3\30\20maximum_padding\3\1\18insert_at_end\2\14auto_hide\2\28icon_close_tab_modified\b‚óè\rclosable\2\rtabpages\2\26icon_separator_active\5\nicons\2\28icon_separator_inactive\5\15bufferline\6g\bvim\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\né\5\0\0\6\0\23\0-6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\15\0005\3\14\0=\3\16\2B\0\2\0016\0\0\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\6,\6n\20nvim_set_keymap\bapi\tview\1\0\0\1\0\1\nwidth\3(\nsetup\14nvim-tree\frequire\1\0\4\nfiles\3\1\bgit\3\1\18folder_arrows\3\0\ffolders\3\1\25nvim_tree_show_icons\1\16\0\0\f.quasar\f.vscode\20store-flag.d.ts\16quasar.d.ts\tdist\vplugin\17netlify.toml\18jsconfig.json\22package-lock.json\t.git\n.nuxt\17node_modules\v.cache\t~*.*\14.DS_Store\21nvim_tree_ignore%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\29nvim_tree_indent_markers\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\b\0\16\00085\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\14\0'\6\15\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2ı\2\1\0\4\0\14\1\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0006\3\3\0009\3\4\0039\3\5\3\24\3\0\3=\3\a\0026\3\3\0009\3\4\0039\3\b\3=\3\b\2B\0\2\0016\0\t\0003\1\v\0=\1\n\0006\0\3\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\nshell\tsize\1\0\b\14direction\rvertical\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\17hide_numbers\2\17open_mapping\n<c-\\>\18close_on_exit\2\fcolumns\6o\bvim\nsetup\15toggleterm\frequire\1ÄÄÄˇ\3\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÇ\a\0\0\t\0-\0c'\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\2\4\2'\3\6\0=\3\5\0029\2\3\0019\2\4\2=\0\a\0029\2\3\0019\2\b\2=\0\a\0029\2\t\0019\2\4\2'\3\n\0=\3\5\0029\2\t\0019\2\4\2=\0\a\0029\2\t\0019\2\b\2=\0\a\0029\2\v\0019\2\4\2=\0\5\0029\2\v\0019\2\4\2=\0\a\0029\2\v\0019\2\b\2=\0\a\0029\2\v\0019\2\f\2=\0\a\0029\2\r\0019\2\4\2'\3\14\0=\3\5\0029\2\r\0019\2\4\2=\0\a\0029\2\r\0019\2\b\2=\0\a\0029\2\r\0019\2\f\2=\0\a\0029\2\15\0019\2\4\2'\3\16\0=\3\5\0029\2\15\0019\2\4\2=\0\a\0029\2\15\0019\2\b\2=\0\a\0026\2\1\0'\4\17\0B\2\2\0029\2\18\0025\4\21\0005\5\19\0=\1\20\5=\5\22\0045\5\26\0005\6\23\0005\a\24\0=\a\25\6=\6\27\0055\6\28\0=\6\29\0054\6\3\0005\a\30\0005\b\31\0=\b\25\a>\a\1\0065\a \0005\b!\0=\b\"\a>\a\2\6=\6#\0055\6$\0=\6%\0054\6\3\0005\a&\0>\a\1\6=\6'\0054\6\3\0005\a(\0>\a\1\6=\6)\5=\5*\0045\5+\0=\5,\4B\2\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\14lualine_z\1\2\1\0\rlocation\ticon\bÓÇ°\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\0\2\afg\f#f0f0f0\bgui\tbold\1\2\2\0\rfilename\14full_path\2\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\3\0\0\tmode\npaste\foptions\1\0\0\ntheme\1\0\2\23section_separators\6 \25component_separators\6 \nsetup\flualine\f#61afef\vinsert\f#98c379\vnormal\6c\rinactive\f#e06c75\freplace\6b\abg\f#c678dd\afg\6a\vvisual lualine.themes.iceberg_dark\frequire\f#0F1117\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¸\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\14\4=\4\21\0035\4\22\0005\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\bcss\blua\thtml\tbash\bvue\15javascript\tjson\fgraphql\bphp\truby\15typescript\nregex\njsonc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nÈ\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\30<cmd>Trouble quickfix<cr>\atf\1\0\2\fnoremap\2\vsilent\2\30<cmd>LspTroubleToggle<cr>\att\6n\20nvim_set_keymap\bapi\bvim\16action_keys\tjump\1\3\0\0\t<cr>\n<tab>\1\0\3\vcancel\n<esc>\frefresh\6r\nclose\6q\1\0\v\14auto_fold\1\29use_lsp_diagnostic_signs\2\tmode\30lsp_workspace_diagnostics\nicons\1\rposition\vbottom\vheight\3\n\nwidth\0032\17auto_preview\2\15auto_close\2\14auto_open\1\17indent_lines\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nç\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
