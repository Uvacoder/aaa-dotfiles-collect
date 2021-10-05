-- plugins --
-------------

local use = require('packer').use
require('packer').startup({
  function(use)

    -- Packages
    use 'wbthomason/packer.nvim'
    use 'editorconfig/editorconfig-vim'
    use 'mg979/vim-visual-multi'
    use 'windwp/nvim-autopairs'
    use { 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use 'norcalli/nvim-colorizer.lua'
    use 'lukas-reineke/format.nvim'
    use { 'lewis6991/gitsigns.nvim',  requires = 'nvim-lua/plenary.nvim' }
    use { 'hoob3rt/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}}
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
    use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
    use 'tpope/vim-commentary'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"

    -- themes (possible values: tokio-dark, rose-pine, gruv-queen, github)
    require("themes/tokyo-dark").setup(use)

  end,
  config = {
    display = {
      open_fn = require('packer.util').float
    }
  }
})


-- nvim-autopairs
require'nvim-autopairs'.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})


-- barbar
vim.g.bufferline = {
  animation = true,
  auto_hide = true,
  tabpages = true,
  closable = true,
  clickable = true,
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '',
  icon_separator_inactive = '',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  insert_at_end = true,
  maximum_padding = 1,
  maximum_length = 30,
}

vim.api.nvim_set_keymap('n', 'bc', ':BufferClose<CR>', { noremap = true, silent = true })
vim.api.nvim_command("hi! BufferCurrent guifg=#f0f0f0")


-- colorizer
require('colorizer').setup()


-- format
require("format").setup{
  ["*"] = {{cmd = {"sed -i 's/[ \t]*$//'"}}},
  javascript = {{cmd = {"prettier -w"}}},
  vue = {{cmd = {"prettier -w"}}},
  html = {{cmd = {"prettier -w"}}},
  svg = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
}

vim.api.nvim_exec([[
  augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg,*.lua FormatWrite
  augroup END
]], true)


-- gitsigns
require('gitsigns').setup {}


-- lualine
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
      {"diagnostics", sources = {"nvim_lsp"}}
    },
    lualine_x = {"filetype"},
    lualine_y = {{"progress"}},
    lualine_z = {{"location", icon = ""}}
  },
  extensions = {'nvim-tree'}
}


-- telescope
require('telescope').setup{
  defaults = { file_ignore_patterns = {"node_modules"} }
}

vim.api.nvim_set_keymap('n', 'ff', ':lua require("telescope.builtin").find_files()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'sl', ':lua require("telescope.builtin").live_grep()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'sd', ':lua require("telescope.builtin").grep_string()<CR>', { noremap = true, silent = true })


-- nvim-tree
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
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
  folder_arrows = 1
}
require'nvim-tree'.setup {
  view = {width = 40}
}

vim.api.nvim_set_keymap('n', ',', ':NvimTreeToggle<CR>', {noremap = true, silent = true})


-- trouble
require("trouble").setup {
  position = "bottom",
  height = 10,
  width = 50,
  mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
  indent_lines = true,
  auto_open = false,
  auto_close = true,
  auto_preview = true,
  auto_fold = false,
  use_lsp_diagnostic_signs = true -- enabling this will use the signs defined in your lsp client
}

vim.api.nvim_set_keymap("n", "tt", "<cmd>LspTroubleToggle<cr>", { noremap=true, silent=true })
vim.api.nvim_set_keymap("n", "tf", "<cmd>Trouble quickfix<cr>", { noremap=true, silent=true })







-- nvim-treesitter
require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "css", "lua", "html", "bash", "vue", "javascript", "json",
    "graphql", "php", "typescript", "regex", "jsonc"
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
local nvim_lsp = require 'lspconfig'
local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable the following language servers
local servers = { 'vuels', 'tailwindcss', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'path' },
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- Highlight on yank
vim.api.nvim_exec([[
  augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]], false)


require("mappings")

require("autocmd")
