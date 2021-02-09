local g = vim.g
local api = vim.api
local option = vim.g.custom.options
local color = vim.g.custom.colors

if g.custom.actived then
  api.nvim_command('hi! Normal guibg='..color.ui.bg..' guifg= '.. color.grey)
  api.nvim_command('hi! SignColumn guibg='..color.ui.bg)
  api.nvim_command('hi! EndOfBuffer guibg='..color.ui.bg..' guifg='..color.ui.bg)
  api.nvim_command('hi! FoldColumn guibg='..color.ui.bg)
  api.nvim_command('hi! LineNr guibg='..color.ui.bg)
  api.nvim_command('hi! IncSearch guibg='..color.yellow..' guifg='..color.black)

-- hi Error    ctermfg=204 ctermbg=NONE guifg=#ff5f87 guibg=NONE
-- hi Warning  ctermfg=178 ctermbg=NONE guifg=#D7AF00 guibg=NONE
-- hi ALEError ctermfg=204 guifg=#ff5f87 ctermbg=52 guibg=#5f0000 cterm=undercurl gui=undercurl
-- hi link ALEErrorSign    Error
-- hi link ALEWarningSign  Warning

  api.nvim_command('hi! CursorLine guibg='..color.ui.cursorline)

  if option.invert_vertsplit then
    api.nvim_command('hi! VertSplit guibg='..color.ui.statusline..' guifg='..color.ui.bg)
  else
    api.nvim_command('hi! VertSplit guifg='..color.ui.statusline..' guibg='..color.ui.bg)
  end

  api.nvim_command('hi! DiffAdd guifg='..color.green..' guibg='..color.ui.bg)
  api.nvim_command('hi! DiffChange guifg='..color.yellow..' guibg='..color.ui.bg)
  api.nvim_command('hi! DiffDelete guifg='..color.red..' guibg='..color.ui.bg)
else
  api.nvim_command('hi! DiffAdd guifg='..color.green..' guibg=NONE')
  api.nvim_command('hi! DiffChange guifg='..color.yellow..' guibg=NONE')
  api.nvim_command('hi! DiffDelete guifg='..color.red..' guibg=NONE')
end

api.nvim_command('hi! String cterm=italic gui=italic')
api.nvim_command('hi! Comment cterm=italic gui=italic')

api.nvim_command('hi! link CursorLineNR CursorLine')
