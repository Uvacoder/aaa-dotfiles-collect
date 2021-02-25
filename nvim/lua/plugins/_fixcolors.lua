local api = vim.api
local colors = vim.g.fix.colors
local ui = vim.g.fix.ui

if vim.g.fix.theme_ui then
  api.nvim_command('hi!Normal guibg='..ui.bg..' guifg= '.. colors.grey)
  api.nvim_command('hi! SignColumn guibg='..ui.bg)
  api.nvim_command('hi! EndOfBuffer guibg='..ui.bg..' guifg='..ui.bg)
  api.nvim_command('hi! FoldColumn guibg='..ui.bg)
  api.nvim_command('hi! LineNr guibg='..ui.bg)
  api.nvim_command('hi! IncSearch guibg='..colors.yellow..' guifg='..colors.black)
  api.nvim_command('hi! Error guifg='..colors.red..' guibg='..ui.bg)
  api.nvim_command('hi! Warning guifg='..colors.yellow..' guibg='..ui.bg)
  api.nvim_command('hi! DiffAdd guifg='..colors.green..' guibg='..ui.bg)
  api.nvim_command('hi! DiffChange guifg='..colors.yellow..' guibg='..ui.bg)
  api.nvim_command('hi! DiffDelete guifg='..colors.red..' guibg='..ui.bg)

  if vim.g.fix.invert_vertsplit then
    api.nvim_command('hi! VertSplit guibg='..ui.statusline..' guifg='..ui.bg)
  else
    api.nvim_command('hi! VertSplit guifg='..ui.statusline..' guibg='..ui.bg)
  end
end

api.nvim_command('hi! DiffAdd guifg='..colors.green..' guibg=NONE')
api.nvim_command('hi! DiffChange guifg='..colors.yellow..' guibg=NONE')
api.nvim_command('hi! DiffDelete guifg='..colors.red..' guibg=NONE')
api.nvim_command('hi! CursorLine guibg='..ui.cursorline)
api.nvim_command('hi! link CursorLineNR    CursorLine')
api.nvim_command('hi! link ALEErrorSign    Error')
api.nvim_command('hi! link ALEWarningSign  Warning')
api.nvim_command('hi! String cterm=italic  gui=italic')
api.nvim_command('hi! Comment cterm=italic gui=italic')

-- hi ALEError ctermfg=204 guifg=#ff5f87 ctermbg=52 guibg=#5f0000 cterm=undercurl gui=undercurl
