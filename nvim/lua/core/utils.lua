local M = {}

M.hi_bg = function(group, color)
  vim.cmd("highlight! " .. group .. " guibg=" .. color)
end

M.hi_fg = function(group, color)
  vim.cmd("highlight! " .. group .. " guifg=" .. color)
end

M.hi_link = function(group_a, group_b)
  vim.cmd("highlight! link " .. group_a .. " " .. group_b)
end

M.map = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = M.merge(options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

M.buf_map = function(bufnr, mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = M.merge(options, opts)
  end
  vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
end

M.merge = function(...)
  return vim.tbl_deep_extend("force", ...)
end

return M
