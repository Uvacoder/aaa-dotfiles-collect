local execute = vim.api.nvim_command
local M = {}

function M.removeBgColor()
  execute("hi! Normal guibg=NONE")
  execute("hi! EndOfBuffer guibg=NONE")
  execute("hi! NonText guibg=NONE")
  execute("hi! LineNr guibg=NONE")
  execute("hi! CursorLine guibg=NONE")
  execute("hi! SpecialKey guibg=NONE")
  execute("hi! FoldColumn guibg=NONE")
  execute("hi! VertSplit guibg=NONE")
end

function M.myColors()
  -- execute("hi! VertSplit   guibg="..vim.g.colors.bg)
  execute("hi! SignColumn  guibg="..vim.g.colors.bg)
  execute("hi! FoldColumn  guibg="..vim.g.colors.bg)
  execute("hi! DiffAdd     guifg="..vim.g.colors.green)
  execute("hi! DiffAdd     guibg="..vim.g.colors.bg)
  execute("hi! DiffChange  guifg="..vim.g.colors.yellow)
  execute("hi! DiffChange  guibg="..vim.g.colors.bg)
  execute("hi! DiffDelete  guifg="..vim.g.colors.red)
  execute("hi! DiffDelete  guibg="..vim.g.colors.bg)
  -- execute("hi! link    CursorLine      Normal")
  execute("hi! link    CursorLineNr    Normal")
  execute("hi! link    Warning         DiffChange")
  execute("hi! link    Error           DiffDelete")
  execute("hi! Comment gui=italic")
end

return M
