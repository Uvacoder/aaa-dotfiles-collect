" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sldobri/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["ayu-vim"] = {
    config = { "\27LJ\2\ns\0\0\3\0\b\0\f6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\0016\0\6\0'\2\a\0B\0\2\1K\0\1\0\14fixcolors\frequire\20colorscheme ayu\bcmd\vmirage\rayucolor\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["coc.nvim"] = {
    config = { "\27LJ\2\nU\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\3\0\0\14coc-vetur\20coc-tailwindcss\26coc_global_extensions\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15statusline\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nž\3\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\1\18sign_priority\3\5\17changedelete\1\0\3\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\ttext\bâ–‹\14topdelete\1\0\3\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\ttext\bâ–‹\vdelete\1\0\3\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\ttext\bâ–‹\vchange\1\0\3\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\ttext\bâ–‹\badd\1\0\0\1\0\3\nnumhl\18GitSignsAddNr\ahl\fDiffAdd\ttext\bâ–‹\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nO\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\1\nnames\1\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n¯\3\0\0\3\0\16\0'6\0\0\0009\0\1\0)\1(\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\fpreview\1\0\0\1\2\0\0\n<Tab>\23nvim_tree_bindings\1\0\1\fdefault\bî˜’\20nvim_tree_icons\1\5\0\0\vplugin\18jsconfig.json\22package-lock.json\17node_modules\21nvim_tree_ignore\21nvim_tree_git_hl\21nvim_tree_follow\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\25nvim_tree_auto_close\20nvim_tree_width\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n„\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
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
    loaded = false,
    needs_bufread = false,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  tcomment_vim = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/tcomment_vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÚ\2\0\0\a\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\6\0006\4\0\0'\6\3\0B\4\2\0029\4\4\0049\4\5\4=\4\a\0036\4\0\0'\6\3\0B\4\2\0029\4\b\0049\4\5\4=\4\t\0036\4\0\0'\6\3\0B\4\2\0029\4\n\0049\4\5\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rdefaults\1\0\0\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\1\0\3\20scroll_strategy\ncycle\20layout_strategy\tflex\23selection_strategy\nreset\bnew\19vim_buffer_cat\25telescope.previewers\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-polyglot"] = {
    config = { "\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0004\1\0\0=\1\2\0K\0\1\0\23vue_pre_processors\6g\bvim\0" },
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/sldobri/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  }
}

-- Config for: vim-polyglot
try_loadstring("\27LJ\2\n4\0\0\2\0\3\0\0056\0\0\0009\0\1\0004\1\0\0=\1\2\0K\0\1\0\23vue_pre_processors\6g\bvim\0", "config", "vim-polyglot")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n¯\3\0\0\3\0\16\0'6\0\0\0009\0\1\0)\1(\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0005\1\14\0005\2\r\0=\2\15\1=\1\f\0K\0\1\0\fpreview\1\0\0\1\2\0\0\n<Tab>\23nvim_tree_bindings\1\0\1\fdefault\bî˜’\20nvim_tree_icons\1\5\0\0\vplugin\18jsconfig.json\22package-lock.json\17node_modules\21nvim_tree_ignore\21nvim_tree_git_hl\21nvim_tree_follow\28nvim_tree_hide_dotfiles\27nvim_tree_quit_on_open\25nvim_tree_auto_close\20nvim_tree_width\6g\bvim\0", "config", "nvim-tree.lua")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\nO\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\1\nnames\1\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\nÚ\2\0\0\a\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\6\0006\4\0\0'\6\3\0B\4\2\0029\4\4\0049\4\5\4=\4\a\0036\4\0\0'\6\3\0B\4\2\0029\4\b\0049\4\5\4=\4\t\0036\4\0\0'\6\3\0B\4\2\0029\4\n\0049\4\5\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rdefaults\1\0\0\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\1\0\3\20scroll_strategy\ncycle\20layout_strategy\tflex\23selection_strategy\nreset\bnew\19vim_buffer_cat\25telescope.previewers\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15statusline\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n„\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: coc.nvim
try_loadstring("\27LJ\2\nU\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\3\0\0\14coc-vetur\20coc-tailwindcss\26coc_global_extensions\6g\bvim\0", "config", "coc.nvim")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\nž\3\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\1\18sign_priority\3\5\17changedelete\1\0\3\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\ttext\bâ–‹\14topdelete\1\0\3\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\ttext\bâ–‹\vdelete\1\0\3\nnumhl\21GitSignsDeleteNr\ahl\15DiffDelete\ttext\bâ–‹\vchange\1\0\3\nnumhl\21GitSignsChangeNr\ahl\15DiffChange\ttext\bâ–‹\badd\1\0\0\1\0\3\nnumhl\18GitSignsAddNr\ahl\fDiffAdd\ttext\bâ–‹\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
-- Config for: ayu-vim
try_loadstring("\27LJ\2\ns\0\0\3\0\b\0\f6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\0016\0\6\0'\2\a\0B\0\2\1K\0\1\0\14fixcolors\frequire\20colorscheme ayu\bcmd\vmirage\rayucolor\6g\bvim\0", "config", "ayu-vim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
