local g = vim.g

g.barow = {
  modes = {
    normal = {'N', 'BarowNormal'},
    insert = {'I', 'BarowInsert'},
    replace = {'R', 'BarowReplace'},
    visual = {'V', 'BarowVisual'},
    v_line = {'L', 'BarowVisual'},
    v_block = {'B', 'BarowVisual'},
    select = {'S', 'BarowVisual'},
    command = {'C', 'BarowCommand'},
    shell_ex = {'!', 'BarowCommand'},
    terminal = {'T', 'BarowTerminal'},
    prompt = {'P', 'BarowNormal'},
    inactive = {' ', 'BarowModeNC'}
  },
  statusline = {'Barow', 'BarowNC'},
  tabline = {'BarowTab', 'BarowTabSel', 'BarowTabFill'},
  buf_name = {
    empty = '',
    hi = {'BarowBufName', 'BarowBufNameNC'}
  },
  read_only = {
    value = 'ro',
    hi = {'BarowRO', 'BarowRONC'}
  },
  buf_changed = {
    value = '*',
    hi = {'BarowChange', 'BarowChangeNC'}
  },
  tab_changed = {
    value = '*',
    hi = {'BarowTChange', 'BarowTChangeNC'}
  },
  line_percent = {
    hi = {'BarowLPercent', 'BarowLPercentNC'}
  },
  row_col = {
    hi = {'BarowRowCol', 'BarowRowColNC'}
  },
  modules = {
    { 'barowGit#branch', 'BarowHint' },
    { 'barowLSP#error', 'BarowError' },
    { 'barowLSP#warning', 'BarowWarning' },
    { 'barowLSP#info', 'BarowInfo' },
    { 'barowLSP#hint', 'BarowHint' },
    { 'barowLSP#coc_status', 'StatusLine' },
    { 'barowLSP#ale_status', 'StatusLine' }
  }
}
