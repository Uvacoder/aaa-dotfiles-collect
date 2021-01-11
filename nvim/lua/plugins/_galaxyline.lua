local gl = require('galaxyline')
gl.short_line_list = {'LuaTree','gitsigns','dbui'}
local gls = gl.section

local colors = vim.g.my_colors

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      local m_color = {n = colors.blue, i = colors.green,v=colors.magenta,[''] = colors.magenta,V=colors.magenta,
                      c = colors.red,no = colors.magenta,s = colors.orange,S=colors.orange,
                      [''] = colors.orange,ic = colors.yellow,R = colors.grey,Rv = colors.gray,
                      cv = colors.red,ce=colors.red, r = colors.cyan,rm = colors.cyan, ['r?'] = colors.cyan,
                      ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg=#000000 guibg='..m_color[vim.fn.mode()])
      local alias = {n= '[N]', i= '[I]', c= '[C]', V= '[V]', [''] = '[V]'}
      return alias[vim.fn.mode()]
    end,
   separator = '  ',
    separator_highlight = {colors.yellow,function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg
    end},
    highlight = {colors.yellow,colors.bg,'bold'},
  },
}

gls.left[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[3] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.black,colors.bg},
    highlight = {colors.grey,colors.bg}
  }
}

gls.left[4] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {colors.red,colors.bg},
  }
}

gls.left[5] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    separator = '  ',
    separator_highlight = {colors.black,colors.bg},
    highlight = {colors.grey,colors.bg},
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
    highlight = {colors.green,colors.bg},
  }
}

gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.bg},
  }
}

gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.bg},
  }
}

gls.left[9] = {
  LeftEnd = {
    provider = function() return '  ' end,
    separator = '  ',
    separator_highlight = {colors.black,colors.bg},
    highlight = {colors.black,colors.bg}
  }
}

gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

gls.left[11] = {
  Space = {
    provider = function () return ' ' end,
    highlight = {colors.red,colors.bg}
  }
}

gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.black,colors.bg},
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '   ',
    separator_highlight = {colors.cyan,colors.bg},
    highlight = {colors.grey,colors.bg},
  },
}

gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.black,colors.bg},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {colors.black,colors.bg},
    highlight = {colors.grey,colors.bg}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {colors.black,colors.bg},
    highlight = {colors.grey,colors.bg}
  }
}
