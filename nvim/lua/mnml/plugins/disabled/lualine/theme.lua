local get_hl = require("mnml.utils").get_hl
local bg = get_hl("TabLineFill", "bg#")

return {
  normal = {
    a = { fg = vim.g.mnml.ui.colors.info, bg = bg, gui = "bold" },
    b = { fg = vim.g.mnml.ui.colors.white, bg = bg, gui = "bold" },
    c = { fg = vim.g.mnml.ui.colors.fg, bg = bg },
  },
  insert = { a = { fg = vim.g.mnml.ui.colors.success, bg = bg, gui = "bold" } },
  visual = { a = { fg = vim.g.mnml.ui.colors.warning, bg = bg, gui = "bold" } },
  replace = { a = { fg = vim.g.mnml.ui.colors.error, bg = bg, gui = "bold" } },
}
