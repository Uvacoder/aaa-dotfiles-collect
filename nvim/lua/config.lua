--Nvim Treesitter configurations and abstraction layer
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "css", "lua", "html", "bash", "vue", "javascript", "json", 
    "graphql", "php", "ruby", "typescript", "regex", "jsonc" 
  },
  highlight = {enable = true},
  rainbow = {enable = true}
})

vim.g.indent_blankline_buftype_exclude = {'terminal'}
vim.g.indent_blankline_filetype_exclude = {'help', 'startify', 'dashboard', 'packer', 'neogitstatus'}
vim.g.indent_blankline_char = '▏'
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
    'class', 'return', 'function', 'method', '^if', '^while', 'jsx_element', '^for', '^object', '^table', 'block',
    'arguments', 'if_statement', 'else_clause', 'jsx_element', 'jsx_self_closing_element', 'try_statement',
    'catch_clause', 'import_statement'
}
-- themes
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1
vim.cmd('colorscheme OceanicNext')
require('fixcolors')

-- The fastest Neovim colorizer.
require("colorizer").setup(
  {"*"},
  {names = false}
)

-- A file explorer tree for neovim written in lua
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_icons = { default = "" }
vim.g.nvim_tree_ignore = {
  "plugin",
  "plugin",
  "jsconfig.json",
  "package-lock.json",
  ".git",
  ".nuxt",
  "node_modules",
  ".cache",
  ".DS_Store"
}

-- search
require("telescope").setup({
  defaults = {
    prompt_position = "top",
    prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    file_previewer = require"telescope.previewers".vim_buffer_cat.new,
    grep_previewer = require"telescope.previewers".vim_buffer_vimgrep.new,
    qflist_previewer = require"telescope.previewers".vim_buffer_qflist.new,
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    preview_cutoff = 80,
    layout_strategy = "flex"
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
})
require('telescope').load_extension('fzy_native')

-- show git stuff in signcolumn
require("gitsigns").setup({
  signs = {
    add = {hl = "DiffAdd"   , text = "▋", numhl="GitSignsAddNr"},
    change = {hl = "DiffChange", text = "▋", numhl="GitSignsChangeNr"},
    delete = {hl = "DiffDelete", text = "▋", numhl="GitSignsDeleteNr"},
    topdelete = {hl = "DiffDelete", text = "▋", numhl="GitSignsDeleteNr"},
    changedelete = {hl = "DiffChange", text = "▋", numhl="GitSignsChangeNr"},
  },
  sign_priority = 5,
})

-- Intellisense and completion engine
vim.g.coc_global_extensions = {
  "coc-snippets",
  "coc-tailwindcss"
}

-- commmenting
require('nvim_comment').setup()

-- Check syntax in Vim asynchronously and fix files
vim.g.ale_disable_lsp = 1
vim.g.ale_sign_column_always = 1
vim.g.ale_linter_aliases = {vue = {"vue", "javascript"}}
vim.g.ale_linters = {vue = {"eslint", "vls"}}
vim.g.ale_fixers = {"prettier", "eslint", "luafmt", "remove_trailing_lines", "trim_whitespace"}
vim.g.ale_fix_on_save = 1
vim.g.ale_sign_error = " "
vim.g.ale_sign_warning = " "
vim.g.ale_echo_msg_error_str = "E"
vim.g.ale_echo_msg_warning_str = "W"
vim.g.ale_echo_msg_format = "[%severity%][%linter%] %s"
vim.g.ale_lua_luafmt_options = "{'--indent-count', 4, '--stdin'}"

-- autopairs for neovim written by lua
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

-- A solid language pack for Vim.
vim.g.vue_pre_processors = {}

-- neovim statusline plugin written in lua
require('lualine').setup({
  options = {
    theme = 'ayu_dark',
    section_separators = {'', ''},
    component_separators = {'|', '|'},
    icons_enabled = true,
  },
  sections = {
    lualine_a = { {'mode', upper = true} },
    lualine_c = { {'branch'}, { 'diff' } },
    lualine_b = { {'filename', file_status = true,}, { 'diagnostics', sources = { 'coc', 'ale' }} },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location'  },
  },
  inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {   }
  },
})
