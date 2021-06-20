local gl = require('galaxyline')
local colors =  {
  bg = '#202328',
  fg = '#C1C7F6',
  yellow = '#ECBE7B',
  cyan = '#55DCCA',
  darkblue = '#081633',
  green = '#90D36A',
  orange = '#FF995A',
  violet = '#A56ED8',
  magenta = '#c678dd',
  blue = '#7A9BF9';
  red = '#D70000';
}

local condition = require('galaxyline.condition')

local mode_colors = {
  n = colors.red, 
  no = colors.red,
  i = colors.green,
  ic = colors.yellow,
  v = colors.blue,
  [''] = colors.blue,
  V = colors.blue,
  c = colors.magenta,
  ce =colors.red, 
  s = colors.orange,
  S = colors.orange,
  [''] = colors.orange,
  r = colors.cyan,
  R = colors.violet,
  Rv = colors.violet,
  cv = colors.red,
  rm = colors.cyan, 
  ['r?'] = colors.cyan,
  ['!']  = colors.red,
  t = colors.red
}

local mode_icons = {
  n = "    ", 
  no = "    ",
  i = "    ",
  ic = "    ",
  v = "    ",
  [''] = "    ",
  V = "    ",
  c = "  גּ  ",
  ce ="    ", 
  s = "  礪 ",
  S = "  礪 ",
  [''] = "  礪 ",
  r =  "    ",
  R =  "    ",
  Rv = "    ",
  cv = "    ",
  rm = "     ", 
  ['r?'] = "    ",
  ['!']  = "    ",
  t = "    "
}

-- local mode_map = {
--   ['n'] = 'normal ',
--   ['no'] = 'n·operator pending ',
--   ['v'] = 'visual ',
--   ['V'] = 'v·line ',
--   [''] = 'v·block ',
--   ['s'] = 'select ',
--   ['S'] = 's·line ',
--   [''] = 's·block ',
--   ['i'] = 'insert ',
--   ['R'] = 'replace ',
--   ['Rv'] = 'v·replace ',
--   ['c'] = 'command ',
--   ['cv'] = 'vim ex ',
--   ['ce'] = 'ex ',
--   ['r'] = 'prompt ',
--   ['rm'] = 'more ',
--   ['r?'] = 'confirm ',
--   ['!'] = 'shell ',
--   ['t'] = 'terminal '
-- }

local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

gls.left[1] = {
  RainbowRed = {
    provider = function() return 'ﰙ ' end,
    highlight = {colors.blue,'NONE'}
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
	    local modeIcon	= mode_icons[vim.fn.mode()]
	    local modeColor = mode_colors[vim.fn.mode()]
      vim.api.nvim_command('hi GalaxyViMode guifg='..modeColor)
      return modeIcon
    end,
    highlight = {colors.red,'NONE','bold'},
  },
}

gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,'NONE'},
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,'NONE','bold'}
  }
}

gls.left[5] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,'NONE'}
  }
}

gls.left[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.fg,'NONE'},
  },
}

gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.fg,'NONE','bold'},
  }
}

gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,'NONE'}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,'NONE'},
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,'NONE'},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,'NONE'},
  }
}

gls.mid[1] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
      local tbl = {['dashboard'] = true,['']=true}
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    icon = '   ',
    highlight = {colors.fg,'NONE','bold'}
  }
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.green,'NONE','bold'}
  }
}

gls.right[2] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.fg,'NONE','bold'}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.violet,'NONE','bold'},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,'NONE','bold'},
  }
}

gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.green,'NONE'},
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,'NONE'},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,'NONE'},
  }
}

gls.right[8] = {
  RainbowBlue = {
    provider = function() return ' ﰙ' end,
    highlight = {colors.blue,'NONE'}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE','NONE'},
    highlight = {colors.blue,'NONE','bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,'NONE','bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,'NONE'}
  }
}
