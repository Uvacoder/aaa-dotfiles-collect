local vim.api.nvim_command = vim.api.nvim_command
local M = {}

function M.removeBgColor()

  vim.api.nvim_command("hi! link CursorLineNr Normal")
  vim.api.nvim_command("hi! Comment gui=italic")
  vim.api.nvim_command("hi! Normal guibg=NONE")
  vim.api.nvim_command("hi! EndOfBuffer guibg=NONE")
  vim.api.nvim_command("hi! NonText guibg=NONE")
  vim.api.nvim_command("hi! LineNr guibg=NONE")
  vim.api.nvim_command("hi! CursorLine guibg=NONE")
  vim.api.nvim_command("hi! SpecialKey guibg=NONE")
  vim.api.nvim_command("hi! FoldColumn guibg=NONE")
  vim.api.nvim_command("hi! VertSplit guibg=NONE")
end

function M.myColors()
  -- vim.api.nvim_command("hi! VertSplit   guibg="..vim.g.colors.screen)
  vim.api.nvim_command("hi! SignColumn  guibg="..vim.g.colors.screen)
  vim.api.nvim_command("hi! FoldColumn  guibg="..vim.g.colors.screen)
  vim.api.nvim_command("hi! DiffAdd     guifg="..vim.g.colors.green)
  vim.api.nvim_command("hi! DiffAdd     guibg="..vim.g.colors.screen)
  vim.api.nvim_command("hi! DiffChange  guifg="..vim.g.colors.yellow)
  vim.api.nvim_command("hi! DiffChange  guibg="..vim.g.colors.screen)
  vim.api.nvim_command("hi! DiffDelete  guifg="..vim.g.colors.red)
  vim.api.nvim_command("hi! DiffDelete  guibg="..vim.g.colors.screen)
  -- vim.api.nvim_command("hi! link    CursorLine      Normal")
  vim.api.nvim_command("hi! link    CursorLineNr    Normal")
  vim.api.nvim_command("hi! Comment gui=italic")
end

return M
