local color = vim.g.custom.colors
local mode = {
  c = "🅒",
  i = "🅘",
  n = "🅝",
  r = "🅡",
  s = "🅢",
  t = "🅣",
  v = "🅥"
}

local m_color = {
  n = color.blue,
  i = color.yellow,
  v = color.purple,
  [''] = color.purple,
  V = color.purple,
  c = color.red,
  no = color.magenta,
  s = color.orange,
  S = color.orange,
  [''] = color.orange,
  ic = color.yellow,
  R = color.white,
  Rv = color.gray,
  cv = color.red,
  ce = color.red,
  r = color.cyan,
  rm = color.cyan,
  ['r?'] = color.cyan,
  ['!']  = color.red,
  t = color.red
}

local gl = require('galaxyline')
gl.short_line_list = {'NvimTree','gitsigns','dbui'}
local gls = gl.section

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      vim.api.nvim_command('hi GalaxyViMode guifg='..m_color[vim.fn.mode()])
      vim.api.nvim_command('hi GalaxyViMode guibg='..color.ui.statusline)
      return mode[vim.fn.mode()]
    end,
   separator = '  ',
    separator_highlight = {color.yellow,function()
      if not buffer_not_empty() then
        return color.ui.statusline
      end
      return color.ui.statusline
    end},
    highlight = {color.yellow, color.ui.statusline,'bold'},
  },
}

gls.left[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color, color.ui.statusline},
  },
}

gls.left[3] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.white, color.ui.statusline}
  }
}

gls.left[4] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {color.red, color.ui.statusline},
  }
}

gls.left[5] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    separator = '  ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.white, color.ui.statusline},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[6] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {color.green, color.ui.statusline},
  }
}

gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {color.yellow, color.ui.statusline},
  }
}

gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {color.red, color.ui.statusline},
  }
}

gls.left[9] = {
  LeftEnd = {
    provider = function() return '  ' end,
    separator = '  ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.grey, color.ui.statusline}
  }
}

gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {color.red, color.ui.statusline}
  }
}

gls.left[11] = {
  Space = {
    provider = function () return ' ' end,
    highlight = {color.red, color.ui.statusline}
  }
}

gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {color.blue, color.ui.statusline},
  }
}

gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    -- separator = ' ',
    -- separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.grey, color.ui.statusline},
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '  ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.purple, color.ui.statusline},
  },
}

gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.grey, color.ui.statusline},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.white, color.ui.statusline}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {color.grey, color.ui.statusline},
    highlight = {color.white, color.ui.statusline}
  }
}
