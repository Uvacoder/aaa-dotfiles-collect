local M = {}

M.hl_bg = function(group, color)
  vim.cmd("highlight " .. group .. " guibg=" .. color)
end

M.hl_fg = function(group, color)
  vim.cmd("highlight! " .. group .. " guifg=" .. color)
end

M.hl_fg_bg = function(group, color_fg, color_bg)
  vim.cmd("highlight! " .. group .. " guifg=" .. color_fg .. " guibg=" .. color_bg)
end

M.hl_link = function(group_a, group_b)
  vim.cmd("highlight! link " .. group_a .. " " .. group_b)
end

M.get_hl = function(group, attr) -- get_hl("Normal", "bg#")
  return vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(group)), attr)
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
