local options = {
  background = 'dark',
  autoread = true,
  autowrite = true,
  backup = false, --        creates a backup file
  mouse = 'a', --           allow the mouse to be used in neovim
  clipboard = 'unnamedplus', -- allows neovim to access the system clipboard
  laststatus = 0, --         remove statusline
  cmdheight = 1, --         more space in the neovim command line for displaying messages
  completeopt = { 'menu', 'menuone', 'noselect' }, -- mostly just for cmp
  conceallevel = 0, --       so that `` is visible in markdown files
  fileencoding = 'utf-8', -- the encoding written to a file
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
  signcolumn = 'yes', --     always show the sign column, otherwise it would shift the text each time
  wrap = false, --           display lines as one long line
  scrolloff = 8, --          is one of my fav
  sidescrolloff = 8,
  shell = '/bin/zsh',
  whichwrap = 'b,h,l,s,<,>,[,],~', -- Allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
  foldcolumn = '0',
  foldlevel = 20, --         feel free to decrease the value
  foldenable = true,
  foldmethod = 'indent',
  pumheight = 15,
  helpheight = 12,
  previewheight = 12,
  visualbell = true, -- No beeping.
  errorbells = false, -- No flashing.
  list = true, -- Show characters in 'listchars' in place of certain special characters.
  listchars = { -- Strings to use when 'list' option set.
    tab = '→ ', -- Characters to be used to show a tab.
    nbsp = '◇', -- Character to show for a non-breakable space character.
    extends = '»', -- Character to show in the last column, when 'wrap' is off.
    precedes = '«', -- Character to show in the first visible column.
    trail = '·',
  },
  fillchars = {
    diff = '∙', --           BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
    eob = ' ', --            NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
    fold = '·', --           MIDDLE DOT (U+00B7, UTF-8: C2 B7)
    vert = '│',
    foldopen = '▾',
    foldsep = '│',
    foldclose = '▸',
  },
  shortmess = table.concat({ -- Use abbreviations and short messages in command menu line.
    'f', -- Use "(3 of 5)" instead of "(file 3 of 5)".
    'i', -- Use "[noeol]" instead of "[Incomplete last line]".
    'l', -- Use "999L, 888C" instead of "999 lines, 888 characters".
    'm', -- Use "[+]" instead of "[Modified]".
    'n', -- Use "[New]" instead of "[New File]".
    'r', -- Use "[RO]" instead of "[readonly]".
    'w', -- Use "[w]", "[a]" instead of "written", "appended".
    'x', -- Use "[dos]", "[unix]", "[mac]" instead of "[dos format]", "[unix format]", "[mac format]".
    'o', -- Overwrite message for writing a file with subsequent message.
    'O', -- Message for reading a file overwrites any previous message.
    's', -- Disable "search hit BOTTOM, continuing at TOP" such messages.
    't', -- Truncate file message at the start if it is too long.
    'T', -- Truncate other messages in the middle if they are too long.
    'I', -- Don't give the :intro message when starting.
    'c', -- Don't give ins-completion-menu messages.
    'F', -- Don't give the file info when editing a file.
  }),
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
end
