vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

-------------
-- options --
-------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.autoindent = true
vim.opt.encoding = "UTF-8"
vim.opt.background = "dark"
vim.opt.compatible = false
vim.opt.cmdheight = 1
vim.opt.conceallevel = 0 -- So that I can see `` in markdown files
vim.opt.hidden = true
vim.opt.updatetime = 100
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.joinspaces = false
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.completeopt = "menuone,noinsert,noselect,preview"
vim.opt.shell = "/bin/zsh"
vim.opt.errorformat = "%A%f:%l:%c:%m,%-G%.%#"
vim.opt.showbreak = '﬌ '
-- vim.opt.fillchars = "vert: ,eob: " -- make vertical split sign better
vim.opt.fillchars = {
  vert = " ", -- alternatives ▕│
  fold = " ",
  eob = " ", -- suppress ~ at EndOfBuffer
  diff = "╱", -- alternatives = ⣿ ░ ─
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸"
}
vim.opt.inccommand = "split" -- incrementally show result of command
vim.opt.wildignore = "*/.git/*,*/.DS_Store,dist,*.o,*~,package-lock.json"
vim.opt.listchars = "tab:→ ,nbsp:␣,trail:•,precedes:«,extends:»"
vim.opt.wildignorecase = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldmethod = "manual"
vim.opt.formatoptions = "l"

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end


-------------
-- plugins --
-------------
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup({ function()
  use 'wbthomason/packer.nvim'
  --
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim' 
  use 'kyazdani42/nvim-web-devicons'
  use 'norcalli/nvim-colorizer.lua'
  use 'editorconfig/editorconfig-vim'
  use 'mg979/vim-visual-multi'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'NTBBloodbath/rest.nvim'
  --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } 
  use 'p00f/nvim-ts-rainbow' 
  use 'nvim-treesitter/nvim-treesitter-textobjects' 
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  --
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'

  use 'lukas-reineke/format.nvim'
  use 'folke/trouble.nvim'
  use 'sindrets/diffview.nvim'
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'folke/lsp-colors.nvim'

  use "projekt0n/github-nvim-theme"
  -- use 'Yagua/nebulous.nvim'
  -- use 'tiagovla/tokyodark.nvim'
  -- use { 'rose-pine/neovim', as = 'rose-pine'}

  end,
  config = { display = { open_fn = require('packer.util').float }}
})

require("github-theme").setup({
  theme_style =	"dark",
  transparent = true,
  hide_end_of_buffer = true,
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  colors = {hint = "orange", error = "#ff0000"}
})

-- tokyodark
-- vim.g.tokyodark_transparent_background = true
-- vim.g.tokyodark_enable_italic_comment = true
-- vim.g.tokyodark_enable_italic = true
-- vim.g.tokyodark_color_gamma = "1.5"
-- vim.cmd[[colorscheme tokyodark]]

-- rose-pine
-- vim.g.rose_pine_enable_italics = true
-- vim.g.rose_pine_disable_background = true
-- require('rose-pine').set()

--Nebulous Settings
-- require("nebulous").setup {
--   variant = "night",
--   disable = { background = true },
--   italic = {
--     comments   = true,
--     keywords   = true,
--     functions  = false,
--     variables  = false,
--   },
-- }

-- fix colors
vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
vim.api.nvim_command("hi! NonText guifg=#000000")
vim.api.nvim_command("hi! link CursorLineNr Normal")
-- vim.api.nvim_command("hi! link SignColumn Normal")
vim.api.nvim_command("hi! Comment gui=italic")


-- statusline
require('lualine').setup{
  options = {
    theme = 'iceberg_dark',
    component_separators = "",
    section_separators = "",
  },
  sections = {
    lualine_a = {"mode", "paste"},
    lualine_b = {"branch", "diff"},
    lualine_c = {
      {"filename", file_status = true, full_path = true, color = {fg = '#f0f0f0', gui = 'bold'}},
      {"diagnostics", sources = {"nvim_lsp"}, symbols = {error = '', warn = '', info = '', hint = ''}}
    },
    lualine_x = {"filetype"},
    lualine_y = {{"progress"}},
    lualine_z = {{"location",icon = ""}}
  },
  extensions = {'nvim-tree'}
}


-- bufferline
require("bufferline").setup{ 
  options = {
    offsets = {{filetype = "NvimTree", text = " Explorer"}},
    indicator_icon = '',
    show_buffer_icons = false , 
    show_buffer_close_icons = false ,
    enforce_regular_tabs = false, 
    separator_style = {'',''}
  },
  highlights = {
    buffer_selected = { guifg = '#f0f0f0', gui = "bold" },
    background = { guibg = '#0F1117' },
    fill = { guibg = '#0F1117' },
    tab = { guibg = '#0F1117'},
  }
}

--colorizer
require('colorizer').setup()


-- lsp-colors
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})


-- telescope
require('telescope').setup{
  defaults = { file_ignore_patterns = {"node_modules"} }
}
vim.api.nvim_set_keymap('n', 'ff', ':lua require("telescope.builtin").find_files()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'fg', ':lua require("telescope.builtin").live_grep()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'bb', ':lua require("telescope.builtin").buffers()<CR>', {noremap = true, silent = true})
--

-- autopairs
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})


-- gitsigns
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}


-- config tree
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_ignore = { 
  "dist", "plugin", "netlify.toml", "jsconfig.json", "package-lock.json", 
  ".git", ".nuxt", "node_modules", ".cache", "~*.*", ".DS_Store"
}
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 0
}
vim.api.nvim_set_keymap('n', ',', ':NvimTreeToggle<CR>', {noremap = true, silent = true})


-- treesitter
require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "css", "lua", "html", "bash", "vue", "javascript", "json", 
    "graphql", "php", "ruby", "typescript", "regex", "jsonc" 
  },
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
  },
}


-- lspconfig
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings. -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
  buf_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })
  buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
  buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
  buf_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })

  -- vue 3 cause errors
  -- Set autocommands conditional on server_capabilities
  -- if client.resolved_capabilities.document_highlight then
  --   vim.api.nvim_exec([[
  --   augroup lsp_document_highlight
  --     autocmd! * <buffer>
  --     autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
  --     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  --   augroup END
  --   ]], false)
  -- end
  -- auto formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_exec([[
    augroup lsp_formatting_sync
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
    augroup END
    ]], false)
  end
  -- lsp_signature
end

-- use lsp snippet
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}  

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local function setup_servers()
  require'lspinstall'.setup()

  -- get all installed servers
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    nvim_lsp[server].setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

-- the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

-- nvim_comp
vim.opt.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    -- calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    -- ultisnips = true;
    luasnip = true;
  };
}

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

-- tab completion

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn["compe#complete"]()
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

--  mappings

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

function _G.completions()
    local npairs = require("nvim-autopairs")
    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end

vim.api.nvim_set_keymap("i", "<CR>", "v:lua.completions()", {expr = true})


-- format
require("format").setup{
  -- remove trailing whitespace 
  ["*"] = {{cmd = {"sed -i 's/[ \t]*$//'"}}}, 
  -- javascript = {{cmd = {"prettier -w", "eslint --fix"}}},
  -- vue = {{cmd = {"prettier -w", "eslint --fix"}}},
  javascript = {{cmd = {"prettier -w"}}},
  vue = {{cmd = {"prettier -w"}}},
  html = {{cmd = {"prettier -w"}}},
  svg = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
  markdown = {
    {cmd = {"prettier -w"}},
    {
      cmd = {"black"},
      start_pattern = "^```python$",
      end_pattern = "^```$",
      target = "current"
    }
  }
}
-- {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
vim.api.nvim_exec([[
  augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.html,*.js,*.vue,*.css FormatWrite
  augroup END
]], true)


-- trouble
require("trouble").setup {
  position = "bottom", -- position of the list can be: bottom, top, left, right
  height = 10, -- height of the trouble list when position is top or bottom
  width = 50, -- width of the list when position is left or right
  icons = true, -- use devicons for filenames
  mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
  fold_open = "", -- icon used for open folds
  fold_closed = "", -- icon used for closed folds
  action_keys = { -- key mappings for actions in the trouble list
      close = "q", -- close the list
      cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
      refresh = "r", -- manually refresh
      jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
  },
  indent_lines = true, -- add an indent guide below the fold icons
  auto_open = false, -- automatically open the list when you have diagnostics
  auto_close = true, -- automatically close the list when you have no diagnostics
  auto_preview = true, -- automatyically preview the location of the diagnostic. <esc> to close preview and go back to last window
  auto_fold = false, -- automatically fold a file trouble list at creation
  signs = {
      -- icons / text used for a diagnostic
      error = "",
      warning = "",
      information = "",
      hint = "",
      other = "﫠"
  },
  use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}

vim.api.nvim_set_keymap("n", "tt", "<cmd>Trouble<cr>", { noremap=true, silent=true })
vim.api.nvim_set_keymap("n", "tl", "<cmd>Trouble loclist<cr>", { noremap=true, silent=true })
vim.api.nvim_set_keymap("n", "tf", "<cmd>Trouble quickfix<cr>", { noremap=true, silent=true })



--------------
-- mappings --
--------------
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap=true, silent=true })

-- buffers navigation
vim.api.nvim_set_keymap('n', '=', '<PageDown>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '-', '<PageUp>', { noremap=true, silent=true })

-- select all
vim.api.nvim_set_keymap('n', '<S-A>', 'ggVG', { noremap=true, silent=true })


vim.api.nvim_set_keymap('n', 'ss', ':w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'qq', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-q>', ':q<CR>', { noremap=true, silent=true })

-- search and replace
vim.api.nvim_set_keymap('n', 'hh', ':%s///gcI<Left><Left><Left><Left><Left>', {noremap = true, expr = false, silent = false})
vim.api.nvim_set_keymap('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', { noremap=true, silent=true })

--Add move line shortcuts
vim.api.nvim_set_keymap('n', '<S-J>', ':m .+1<CR>==', { noremap = true})
vim.api.nvim_set_keymap('n', '<S-K>', ':m .-2<CR>==', { noremap = true})
-- vim.api.nvim_set_keymap('i', '<S-J>', '<Esc>:m .+1<CR>==gi', { noremap = true})
-- vim.api.nvim_set_keymap('i', '<S-K>', '<Esc>:m .-2<CR>==gi', { noremap = true})
vim.api.nvim_set_keymap('v', '<S-J>', ':m \'>+1<CR>gv=gv', { noremap = true})
vim.api.nvim_set_keymap('v', '<S-K>', ':m \'<-2<CR>gv=gv', { noremap = true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<TAB>', '>gv', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<S-TAB>', '<gv', { noremap=true, silent=true })

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', '<cmd>bnext<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<S-TAB>', '<cmd>bprevious<CR>', { noremap=true, silent=true })

--  Quick window switching
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w><C-j>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w><C-k>', { noremap=true, silent=true })

-- RestNvim
vim.api.nvim_set_keymap("n", "<C-a>", "<Plug>RestNvim", {noremap = false})



-------------
-- autocmd --
-------------
vim.cmd(':command! WQ wq')
vim.cmd(':command! WQ wq')
vim.cmd(':command! Wq wq')
vim.cmd(':command! Wqa wqa')
vim.cmd(':command! W w')
vim.cmd(':command! Q q')

vim.api.nvim_exec("autocmd InsertEnter * set cul", "")
vim.api.nvim_exec("autocmd InsertLeave * set nocul", "")

-- Auto save files when focus is lost
vim.cmd("autocmd FocusLost * silent! :wa!")
vim.cmd("autocmd TermOpen * setlocal signcolumn=no nonumber norelativenumber")

vim.api.nvim_exec([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup END
]], "")

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

