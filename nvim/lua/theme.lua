local execute = vim.api.nvim_command
local config = vim.g.config

if config._remove_bg then
  execute("hi! SignColumn  guibg=NONE")
  execute("hi! EndOfBuffer guibg=NONE")
  execute("hi! FoldColumn  guibg=NONE")
  execute("hi! LineNr      guibg=NONE")
  execute("hi! VertSplit   guibg=NONE")
  execute("hi! Error       guibg=NONE")
  execute("hi! Warning     guibg=NONE")
  execute("hi! DiffAdd     guibg=NONE")
  execute("hi! DiffChange  guibg=NONE")
  execute("hi! DiffDelete  guibg=NONE")
end

execute("hi! Error      guifg="..config._status.removed)
execute("hi! Warning    guifg="..config._status.modified)
execute("hi! DiffAdd    guifg="..config._status.added)
execute("hi! DiffChange guifg="..config._status.modified)
execute("hi! DiffDelete guifg="..config._status.removed)

execute("hi! link    CursorLineNR    CursorLine")
execute("hi! link    ALEErrorSign    Error")
execute("hi! link    ALEWarningSign  Warning")
execute("hi! String  gui=italic")
execute("hi! Comment gui=italic")
