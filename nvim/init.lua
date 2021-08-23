vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

-------------
-- options --
-------------
local shiftwidth = 2

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
vim.wo.list = true

vim.bo.shiftwidth = shiftwidth
vim.bo.softtabstop = shiftwidth
vim.bo.autoindent = true

vim.o.encoding = "UTF-8"
vim.o.background = "dark"
vim.o.compatible = false
vim.o.cmdheight = 1
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.hidden = true
vim.o.updatetime = 100
vim.o.showcmd = false
vim.o.showmode = false
vim.o.cursorline = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.joinspaces = false
vim.o.shiftwidth = shiftwidth
vim.o.softtabstop = shiftwidth
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoread = true
vim.o.autowrite = true
vim.o.swapfile = false
vim.bo.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.completeopt = "menuone,noinsert,noselect,preview"
vim.o.shell = "/bin/zsh"
vim.o.errorformat = "%A%f:%l:%c:%m,%-G%.%#"
vim.o.showbreak = '﬌ '
vim.o.inccommand = "split" -- incrementally show result of command
vim.o.wildignore = "*/.git/*,*/.DS_Store,dist,*.o,*~,package-lock.json"
vim.o.listchars = "tab:→ ,nbsp:␣,trail:•,precedes:«,extends:»"
vim.o.wildignorecase = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")

if vim.fn.has("termguicolors") == 1 then
  vim.o.termguicolors = true
end

vim.cmd('set iskeyword+=-')
vim.cmd('set formatoptions-=cro')
vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.cmd('set shortmess+=cFW')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('set foldlevel=99')



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
  use 'tpope/vim-commentary'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim' 
  use 'kyazdani42/nvim-web-devicons'
  use 'norcalli/nvim-colorizer.lua'
  use 'editorconfig/editorconfig-vim'
  use 'mattn/emmet-vim' 
  use 'mg979/vim-visual-multi'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
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
  use 'lukas-reineke/format.nvim'
  use 'folke/trouble.nvim'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  --
  use { 'rose-pine/neovim', as = 'rose-pine'}

  end,
  config = { display = { open_fn = require('packer.util').float }}
})


-- rose-pine
vim.g.rose_pine_variant = 'moon'
vim.g.rose_pine_enable_italics = true
vim.g.rose_pine_disable_background = true
require('rose-pine').set()

vim.api.nvim_command("hi! StatusLine guibg=#000000 guifg=#333333")
vim.api.nvim_command("hi! StatusLineNC guibg=#000000 guifg=#000000")
vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
vim.api.nvim_command("hi! NonText guifg=#000000")
vim.api.nvim_command("hi! link CursorLineNr Normal")
vim.api.nvim_command("hi! Comment gui=italic")


-- colorizer
require('colorizer').setup()


-- config emmet
vim.g.user_emmet_complete_tag = 0
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_install_command = 0
vim.g.user_emmet_mode = 'i'


-- autopairs
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})


-- gitsigns
require('gitsigns').setup {
  signs = {
    add = { hl = 'GitGutterAdd', text = '+' },
    change = { hl = 'GitGutterChange', text = '~' },
    delete = { hl = 'GitGutterDelete', text = '_' },
    topdelete = { hl = 'GitGutterDelete', text = '‾' },
    changedelete = { hl = 'GitGutterChange', text = '~' },
  },
}
vim.api.nvim_set_keymap("n", "gs", ":Gstatus<CR>", {})
vim.api.nvim_set_keymap("n", "gb", ":GBranches<CR>", {})
vim.api.nvim_set_keymap("n", "go", ":GBrowse<CR>", {})


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
    extended_mode = true
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


--lspconfig
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap=true, silent=true })
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '<Leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '<Leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '<Leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', { noremap=true, silent=true })
  buf_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap=true, silent=true })
  buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })
  buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '<Leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', { noremap=true, silent=true })
  -- buf_set_keymap('n', '<Leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap=true, silent=true })
  buf_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap=true, silent=true })

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
    augroup lsp_document_highlight
      autocmd! * <buffer>
      autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false)
  end
  -- auto formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_exec([[
    augroup lsp_formatting_sync
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
    augroup END
    ]], false)
  end
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

local function setup_servers()
  require'lspinstall'.setup()

  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    nvim_lsp[server].setup{
      on_attach = on_attach,
      capabilities = capabilities,
      flags = {
         debounce_text_changes = 150,
      }
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
-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

-- compe
vim.o.completeopt = "menuone,noselect"

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
  -- vue = {{cmd = {"eslint --fix", "prettier -w"}}},
  -- javascript = {{cmd = {"eslint --fix", "prettier -w"}}},
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
      -- map to {} to remove a mapping, for example:
      -- close = {},
      close = "q", -- close the list
      cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
      refresh = "r", -- manually refresh
      jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
      open_split = { "<c-x>" }, -- open buffer in new split
      open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
      open_tab = { "<c-t>" }, -- open buffer in new tab
      jump_close = {"o"}, -- jump to the diagnostic and close the list
      toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
      toggle_preview = "P", -- toggle auto_preview
      hover = "K", -- opens a small poup with the full multiline message
      preview = "p", -- preview the diagnostic location
      close_folds = {"zM", "zm"}, -- close all folds
      open_folds = {"zR", "zr"}, -- open all folds
      toggle_fold = {"zA", "za"}, -- toggle fold of current file
      previous = "k", -- preview item
      next = "j" -- next item
  },
  indent_lines = true, -- add an indent guide below the fold icons
  auto_open = false, -- automatically open the list when you have diagnostics
  auto_close = false, -- automatically close the list when you have no diagnostics
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
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap=true, silent=true })


vim.api.nvim_set_keymap('n', 'ss', ':w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'qq', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-q>', ':q<CR>', { noremap=true, silent=true })

-- search and replace
vim.api.nvim_set_keymap('n', 'hh', ':%s///gcI<Left><Left><Left><Left><Left>', {noremap = true, expr = false, silent = false})
vim.api.nvim_set_keymap('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', { noremap=true, silent=true })

-- move lines:
vim.api.nvim_set_keymap('v', '<S-K>', ":m '<-2<CR>gv=gv", { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<S-J>', ":m '>+1<CR>gv=gv", { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<S-L>', '>gv', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<S-H>', '<gv', { noremap=true, silent=true })

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

vim.cmd("autocmd FileType html,css,vue,js,javascript,javascriptreact EmmetInstall")


vim.api.nvim_exec([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup END
]], "")

