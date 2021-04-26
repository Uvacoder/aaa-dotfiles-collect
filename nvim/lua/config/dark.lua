local colors = {
  normal  = "#36a3d9",
  insert  = "#b8cc52",
  replace  = "#f07178",
  visual   = "#ffee99",
  inactive  = "#9298A5",
  filename  = "#e6e1cf",
  bg = "#2a1e32",
  -- bg = "#101419",
}

local dark = {
  normal = {
    a = { bg = colors.bg, fg = colors.normal , gui = "bold" },
    b = { fg = colors.filename, bg = colors.bg },
    c = { fg = colors.inactive, bg = colors.bg },
  },
  insert = {
    a = { bg = colors.bg, fg = colors.insert , gui = "bold" },
  },
  visual = {
    a = { bg = colors.bg, fg = colors.visual , gui = "bold" },
  },
  replace = {
    a = { bg = colors.bg, fg = colors.replace , gui = "bold" },
  },
  inactive = {
    a = { fg = colors.inactive, bg = colors.bg , gui = "bold" },
    b = { fg = colors.inactive, bg = colors.bg },
    c = { fg = colors.inactive, bg = colors.bg },
  },
}

return dark
