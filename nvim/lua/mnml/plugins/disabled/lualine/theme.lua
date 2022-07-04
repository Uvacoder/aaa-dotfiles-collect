local get_hl = require("mnml.utils").get_hl
local bg = get_hl("TabLineFill", "bg#")

return {
  normal = {
    a = { fg = vim.g.my.colors.blue, bg = bg, gui = "bold" },
    b = { fg = vim.g.my.colors.white, bg = bg, gui = "bold" },
    c = { fg = vim.g.my.colors.fg, bg = bg },
  },
  insert = { a = { fg = vim.g.my.colors.green, bg = bg, gui = "bold" } },
  visual = { a = { fg = vim.g.my.colors.yellow, bg = bg, gui = "bold" } },
  replace = { a = { fg = vim.g.my.colors.red, bg = bg, gui = "bold" } },
}
