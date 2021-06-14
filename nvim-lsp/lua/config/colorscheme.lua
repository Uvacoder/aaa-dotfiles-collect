local execute = vim.api.nvim_command
local config = {
  remove_bg = true,
  colors = { bg = "NONE" },
  status = { added = "#5ccc96", modified = "#ffc600", removed = "#F84B5E" }
}

-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1
-- vim.cmd("colorscheme OceanicNext")

-- vim.g.material_style = "deep ocean"
-- vim.g.material_italic_comments = true
-- vim.g.material_italic_keywords = true
-- vim.g.material_italic_functions = true
-- vim.g.material_italic_variables = false
-- vim.g.material_contrast = true
-- vim.g.material_borders = false 
-- require("material").set()

-- vim.g.onedark_terminal_italics = 2
-- vim.cmd("colorscheme onedark")

-- vim.cmd("colorscheme wildcherry")

-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_transparent = true
-- vim.cmd("colorscheme tokyonight")

-- vim.cmd("colorscheme aurora")

vim.cmd("colorscheme darcula-solid")

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
  execute("hi! SignColumn  guibg="..config.colors.bg)
  execute("hi! FoldColumn  guibg="..config.colors.bg)
  execute("hi! Error       guifg="..config.status.removed)
  execute("hi! Warning     guifg="..config.status.modified)
  execute("hi! DiffAdd     guifg="..config.status.added)
  execute("hi! DiffChange  guifg="..config.status.modified)
  execute("hi! DiffDelete  guifg="..config.status.removed)
end

execute("hi! IndentBlanklineChar guifg=#373b43")

execute("hi! link    CursorColumn    Normal")
-- execute("hi! link    CursorLine      Normal")
execute("hi! link    CursorLineNr    Normal")

execute("hi! link    ALEErrorSign    Error")
execute("hi! link    ALEWarningSign  Warning")

execute("hi! Comment gui=italic")
