local colors = vim.g.colors
local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'

local vi_mode_provider = function()
  local mode_alias = {
    n = 'NORMAL',
    no = 'NORMAL',
    i = 'INSERT',
    v = 'VISUAL',
    V = 'V-LINE',
    [''] = 'V-BLOCK',
    c = 'COMMAND',
    cv = 'COMMAND',
    ce = 'COMMAND',
    R = 'REPLACE',
    Rv = 'REPLACE',
    s = 'SELECT',
    S = 'SELECT',
    [''] = 'SELECT',
    t = 'TERMINAL',
  }
  return mode_alias[vim.fn.mode()] .. ' '
end

local icons = {
  linux = ' ',
  macos = ' ',
  windows = ' ',

  errs = ' ',
  warns = ' ',
  infos = ' ',
  hints = ' ',

  lsp = ' ',
  git = ' '
}

local vi_mode_hl = function()
  local vi_mode = require 'feline.providers.vi_mode'
  return {
    name = vi_mode.get_mode_highlight_name(),
    -- bg = 'status',
    fg = vi_mode.get_mode_color()
  }
end

local function file_osinfo()
  local os = vim.bo.fileformat:upper()
  local icon
  if os == 'UNIX' then
    icon = icons.linux
  elseif os == 'MAC' then
    icon = icons.macos
  else
    icon = icons.windows
  end
  return icon
end

local function lsp_diagnostics_info()
  return {
    errs = lsp.get_diagnostics_count('Error'),
    warns = lsp.get_diagnostics_count('Warning'),
    infos = lsp.get_diagnostics_count('Information'),
    hints = lsp.get_diagnostics_count('Hint')
  }
end

local function diag_enable(f, s)
  return function()
    local diag = f()[s]
    return diag and diag ~= 0
  end
end

local function diag_of(f, s)
  local icon = icons[s]
  return function()
    local diag = f()[s]
    return icon .. diag
  end
end

-- LuaFormatter off

local comps = {
  sepa = {
    left = { provider = ' ', hl = { fg = colors.orange }, right_sep = ' ' },
    right = { provider = ' ', hl = { fg = colors.orange }, left_sep = ' ' },
  },
  vi_mode = {
    name = { provider = vi_mode_provider, hl = vi_mode_hl, right_sep = ' ' },
  },
  file = {
    info = { provider = 'file_info', hl = { fg = colors.yellow }, left_sep = ' ' },
    encoding = { provider = 'file_encoding', left_sep = ' ', hl = { fg = colors.white }},
    type = { provider = 'file_type' },
    cursor = { provider = 'position', left_sep = ' ', hl = { fg = colors.white }},
    os = { provider = file_osinfo, left_sep = ' ', hl = { fg = colors.white }}
  },
  diagnos = {
    erro = { provider = diag_of(lsp_diagnostics_info, 'errs'), left_sep = ' ', enabled = diag_enable(lsp_diagnostics_info, 'errs'), hl = { fg = colors.red }},
    warn = { provider = diag_of(lsp_diagnostics_info, 'warns'), left_sep = ' ', enabled = diag_enable(lsp_diagnostics_info, 'warns'), hl = { fg = colors.yellow }},
    info = { provider = diag_of(lsp_diagnostics_info, 'infos'), left_sep = ' ', enabled = diag_enable(lsp_diagnostics_info, 'infos'), hl = { fg = colors.blue }},
    hint = { provider = diag_of(lsp_diagnostics_info, 'hints'), left_sep = ' ', enabled = diag_enable(lsp_diagnostics_info, 'hints'), hl = { fg = colors.cyan }},
  },
  lsp = {
    name = { provider = 'lsp_client_names', left_sep = ' ', icon = icons.lsp, hl = { fg = colors.white } }
  },
  git = {
    branch = { provider = 'git_branch', icon = icons.git, left_sep = ' ', hl = { fg = colors.violet }},
    add = { provider = 'git_diff_added', hl = { fg = colors.green }},
    change = { provider = 'git_diff_changed', hl = { fg = colors.orange }},
    remove = { provider = 'git_diff_removed', hl = { fg = colors.red }}
  }
}

local properties = {
  force_inactive = {
    filetypes = {
      'NvimTree',
      'dbui',
      'packer',
      'startify',
      'fugitive',
      'fugitiveblame'
    },
    buftypes = {'terminal'},
    bufnames = {}
  }
}

local components = {
  left = {
    active = {
      comps.sepa.left,
      comps.vi_mode.name,
      comps.file.info,
      comps.diagnos.err0,
      comps.diagnos.warn,
      comps.diagnos.hint,
      comps.diagnos.info,
      comps.file.os,
      comps.file.cursor,
      comps.file.encoding
    },
    inactive = {
      comps.sepa.left,
      comps.file.info
    }
  },
  mid = {
    active = {
      comps.git.branch,
      comps.git.add,
      comps.git.change,
      comps.git.remove,
    },
    inactive = {}
  },
  right = {
    active = {
      comps.lsp.name,
      comps.sepa.right
    },
    inactive = {
      comps.sepa.right
    }
  }
}

-- LuaFormatter on

require'feline'.setup {
  default_bg = colors.statusline,
  default_fg = colors.white,
  components = components,
  properties = properties,
}
