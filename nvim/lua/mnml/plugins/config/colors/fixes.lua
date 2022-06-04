local hl_bg = require("mnml.utils").hl_bg
local hl_link = require("mnml.utils").hl_link
local get_hl = require("mnml.utils").get_hl

local bg = get_hl("StatusLine", "bg#")

hl_link("Pmenu", "StatusLine")
hl_link("PmenuBorder", "StatusLine")
hl_link("NormalFloat", "StatusLine")
hl_link("FloatBorder", "StatusLine")
hl_link("NeoTreeFloatBorder", "StatusLine")
hl_link("NeoTreeCursorLine", "PmenuSel")

hl_bg("NeoTreeNormal", bg)
hl_bg("NeoTreeNormalNC", bg)
hl_bg("NeoTreeEndOfBuffer", bg)
hl_bg("NeoTreeTitleBar", bg)
hl_bg("NeoTreeGitAdded", bg)
hl_bg("NeoTreeGitConflict", bg)
hl_bg("NeoTreeGitDeleted", bg)
hl_bg("NeoTreeGitIgnored", bg)
hl_bg("NeoTreeGitModified", bg)
hl_bg("NeoTreeGitRenamed", bg)
hl_bg("NeoTreeGitStaged", bg)
hl_bg("NeoTreeGitUnstaged", bg)
