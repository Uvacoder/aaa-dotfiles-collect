local option = vim.g.custom.options
local color = vim.g.custom.colors

if vim.g.custom.actived then
  vim.api.nvim_command('hi! Normal guibg='..color.ui.bg..' guifg= '.. color.grey)
  vim.api.nvim_command('hi! SignColumn guibg='..color.ui.bg)
  vim.api.nvim_command('hi! EndOfBuffer guibg='..color.ui.bg..' guifg='..color.ui.bg)
  vim.api.nvim_command('hi! FoldColumn guibg='..color.ui.bg)
  vim.api.nvim_command('hi! LineNr guibg='..color.ui.bg)
  vim.api.nvim_command('hi! IncSearch guibg='..color.yellow..' guifg='..color.black)

  vim.api.nvim_command('hi! CursorLine guibg='..color.ui.cursorline)

  if option.invert_vertsplit then
    vim.api.nvim_command('hi! VertSplit guibg='..color.ui.statusline..' guifg='..color.ui.bg)
  else
    vim.api.nvim_command('hi! VertSplit guifg='..color.ui.statusline..' guibg='..color.ui.bg)
  end

  vim.api.nvim_command('hi! DiffAdd guifg='..color.green..' guibg='..color.ui.bg)
  vim.api.nvim_command('hi! DiffChange guifg='..color.yellow..' guibg='..color.ui.bg)
  vim.api.nvim_command('hi! DiffDelete guifg='..color.red..' guibg='..color.ui.bg)
else
  vim.api.nvim_command('hi! DiffAdd guifg='..color.green..' guibg=NONE')
  vim.api.nvim_command('hi! DiffChange guifg='..color.yellow..' guibg=NONE')
  vim.api.nvim_command('hi! DiffDelete guifg='..color.red..' guibg=NONE')
end

vim.api.nvim_command('hi! String cterm=italic gui=italic')
vim.api.nvim_command('hi! Comment cterm=italic gui=italic')

vim.api.nvim_command('hi! link CursorLineNR CursorLine')
