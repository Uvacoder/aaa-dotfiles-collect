local fn = vim.fn
local api = vim.api
local color = vim.g.my_colors
local mode = {
  c = "🅒",
  i = "🅘",
  n = "🅝",
  r = "🅡",
  s = "🅢",
  t = "🅣",
  v = "🅥"
}

local gl = require('galaxyline')
gl.short_line_list = {'NvimTree','gitsigns','dbui'}
local gls = gl.section

local buffer_not_empty = function()
  if fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      local m_color = {n = color.blue, i = color.green,v=color.magenta,[''] = color.magenta,V=color.magenta,
                      c = color.red,no = color.magenta,s = color.orange,S=color.orange,
                      [''] = color.orange,ic = color.yellow,R = color.grey,Rv = color.gray,
                      cv = color.red,ce=color.red, r = color.cyan,rm = color.cyan, ['r?'] = color.cyan,
                      ['!']  = color.red,t = color.red}
      api.nvim_command('hi GalaxyViMode guibg=#000000 guifg='..m_color[vim.fn.mode()])
      -- local alias = {n= ' [N]', i= ' [I]', c= ' [C]', V= ' [V]', [''] = ' [V]'}
      -- return alias[fn.mode()]
      return mode[fn.mode()]
    end,
   separator = '  ',
    separator_highlight = {color.yellow,function()
      if not buffer_not_empty() then
        return color.bg
      end
      return color.bg
    end},
    highlight = {color.yellow,color.bg,'bold'},
  },
}

gls.left[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,color.bg},
  },
}

gls.left[3] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.grey,color.bg}
  }
}

gls.left[4] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {color.red,color.bg},
  }
}

gls.left[5] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    separator = '  ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.grey,color.bg},
  }
}

local checkwidth = function()
  local squeeze_width  = fn.winwidth(0) / 2
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
    highlight = {color.green,color.bg},
  }
}

gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {color.yellow,color.bg},
  }
}

gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {color.red,color.bg},
  }
}

gls.left[9] = {
  LeftEnd = {
    provider = function() return '  ' end,
    separator = '  ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.black,color.bg}
  }
}

gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {color.red,color.bg}
  }
}

gls.left[11] = {
  Space = {
    provider = function () return ' ' end,
    highlight = {color.red,color.bg}
  }
}

gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {color.blue,color.bg},
  }
}

gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    -- separator = ' ',
    -- separator_highlight = {color.black,color.bg},
    highlight = {color.black,color.bg},
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '  ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.black,color.bg},
  },
}

gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.black,color.bg},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.grey,color.bg}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {color.black,color.bg},
    highlight = {color.grey,color.bg}
  }
}
