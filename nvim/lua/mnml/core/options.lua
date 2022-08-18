vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python_provider = 0

vim.g.python3_host_prog = "/opt/local/bin/python3"
vim.g.node_host_prog = "/opt/local/lib/node_modules/neovim/bin/cli.js"

local options = {
  background = "dark",
  autoread = true,
  autowrite = true,
  backup = false, --        creates a backup file
  mouse = "a", --           allow the mouse to be used in neovim
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  laststatus = 0,--         remove statusline
  cmdheight = 1, --         more space in the neovim command line for displaying messages
  completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0, --       so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  hlsearch = false, --       highlight all matches on previous search pattern
  ignorecase = true, --      ignore case in search patterns
  pumheight = 10, --         pop up menu height
  showmode = false, --       we don't need to see things like -- INSERT -- anymore
  smartcase = true, --       smart case
  smartindent = true, --     make indenting smarter again
  splitbelow = true, --      force all horizontal splits to go below current window
  splitright = true, --      force all vertical splits to go to the right of current window
  swapfile = false, --       creates a swapfile
  undofile = true, --        enable persistent undo
  updatetime = 100, --       faster completion (4000ms default)
  writebackup = false, --    if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, --       convert tabs to spaces
  shiftwidth = 2, --         the number of spaces inserted for each indentation
  tabstop = 2, --            insert 2 spaces for a tab
  cursorline = false, --     highlight the current line
  number = true, --          set numbered lines
  relativenumber = false, -- set relative numbered lines
  numberwidth = 3, --        set number column width to 2 {default 4}
  signcolumn = "yes", --     always show the sign column, otherwise it would shift the text each time
  wrap = false, --           display lines as one long line
  scrolloff = 8, --          is one of my fav
  sidescrolloff = 8,
  shell = "/bin/zsh",
  foldcolumn = "0",
  foldlevel = 20, --         feel free to decrease the value
  foldenable = true,
  foldmethod = "indent",
  fillchars = {
    diff = "∙", --           BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
    eob = " ", --            NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
    fold = "·", --           MIDDLE DOT (U+00B7, UTF-8: C2 B7)
  },
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append("c")

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
end

local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(default_plugins) do
 vim. g["loaded_" .. plugin] = 1
end
