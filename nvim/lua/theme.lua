local execute = vim.api.nvim_command
local config = vim.g._config

if config.remove_bg then
  execute("hi! Normal       guibg="..config.colors.bg)
  execute("hi! SignColumn   guibg="..config.colors.bg)
  execute("hi! FoldColumn   guibg="..config.colors.bg)
  execute("hi! LineNr       guibg="..config.colors.bg)
  -- execute('hi! CursorLine   guibg='..colors.cursorline)
  execute("hi! VertSplit    guibg="..config.colors.bg.." guifg="..config.colors.bg)
  execute("hi! Error        guibg="..config.colors.bg.." guifg="..config.status.removed)
  execute("hi! Warning      guibg="..config.colors.bg.." guifg="..config.status.modified)
  execute("hi! DiffAdd      guibg="..config.colors.bg.." guifg="..config.status.added)
  execute("hi! DiffChange   guibg="..config.colors.bg.." guifg="..config.status.modified)
  execute("hi! DiffDelete   guibg="..config.colors.bg.." guifg="..config.status.removed)
else
  execute("hi! Error        guifg="..config.status.removed)
  execute("hi! Warning      guifg="..config.status.modified)
  execute("hi! DiffAdd      guifg="..config.status.added)
  execute("hi! DiffChange   guifg="..config.status.modified)
  execute("hi! DiffDelete   guifg="..config.status.removed)
end

execute("hi! link    VertSplit       Normal")
execute("hi! link    NonText         Normal")
execute("hi! link    EndOfBuffer     Normal")
execute("hi! link    CursorLineNR    CursorLine")
execute("hi! link    ALEErrorSign    Error")
execute("hi! link    ALEWarningSign  Warning")
execute("hi! String  gui=italic")
execute("hi! Comment gui=italic")
