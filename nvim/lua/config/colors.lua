local execute = vim.api.nvim_command
local config = vim.g.my_config
local M = {}

function M.myColors()
  if config.remove_bg then
    execute("hi! Normal      guibg="..config.colors.bg)
    execute("hi! SignColumn  guibg="..config.colors.bg)
    execute("hi! StatusLine  guibg="..config.colors.bg)
    execute("hi! FoldColumn  guibg="..config.colors.bg)
    execute("hi! LineNr      guibg="..config.colors.bg)
    execute("hi! NonText     guibg="..config.colors.bg)
    execute("hi! EndOfBuffer guibg="..config.colors.bg)
    execute("hi! VertSplit   guibg="..config.colors.bg)
    execute("hi! Error       guibg="..config.colors.bg.." guifg="..config.status.removed)
    execute("hi! Warning     guibg="..config.colors.bg.." guifg="..config.status.modified)
    execute("hi! DiffAdd     guibg="..config.colors.bg.." guifg="..config.status.added)
    execute("hi! DiffChange  guibg="..config.colors.bg.." guifg="..config.status.modified)
    execute("hi! DiffDelete  guibg="..config.colors.bg.." guifg="..config.status.removed)
  else
    execute("hi! Error       guifg="..config.status.removed)
    execute("hi! Warning     guifg="..config.status.modified)
    execute("hi! DiffAdd     guifg="..config.status.added)
    execute("hi! DiffChange  guifg="..config.status.modified)
    execute("hi! DiffDelete  guifg="..config.status.removed)
    execute("hi! SignColumn  guibg="..config.colors.bg)
    execute("hi! FoldColumn  guibg="..config.colors.bg)
  end

  execute("hi! IndentBlanklineChar guifg=#373b43")
  execute("hi! link    CursorColumn    Normal")
  -- execute("hi! link    CursorLine      Normal")
  execute("hi! link    CursorLineNr    Normal")
  execute("hi! Comment gui=italic")
end

return M


