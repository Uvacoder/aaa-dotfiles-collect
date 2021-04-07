local colors = {
  color19  = "#36a3d9",
  color18  = "#b8cc52",
  color10  = "#f07178",
  color11  = "#9298A5",
  color12  = "#e6e1cf",
  color13  = "#101419",
  color4   = "#101419",
  color5   = "#ffee99",
}

local dark = {
  visual = {
    a = { bg = colors.color4, fg = colors.color5 , "bold", },
  },
  replace = {
    a = { bg = colors.color4, fg = colors.color10 , "bold", },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.color4 },
    c = { fg = colors.color12, bg = colors.color4 },
    a = { fg = colors.color12, bg = colors.color13 , "bold", },
  },
  insert = {
    a = { bg = colors.color4, fg = colors.color18 , "bold", },
  },
  normal = {
    b = { fg = colors.color12, bg = colors.color13 },
    c = { fg = colors.color11, bg = colors.color4 },
    a = { bg = colors.color4, fg = colors.color19 , "bold", },
  },
}

return dark
