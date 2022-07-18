M = {}

M.file_modified = function()
  if vim.bo.modified then
    return ""
  end
  return " "
end

M.lsp_active = function()
  local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return ""
  end
  local names = {}
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      table.insert(names, client.name)
    end
  end
  return table.concat(names, " ")
end

M.diff_color = function()
  return {
    added = { fg = vim.g.mnml.ui.colors.success },
    modified = { fg = vim.g.mnml.ui.colors.warning },
    removed = { fg = vim.g.mnml.ui.colors.error }
  }
end

M.diagnostics_color = function()
  return {
    color_error = { fg = vim.g.mnml.ui.colors.error },
    color_warn = { fg = vim.g.mnml.ui.colors.warning },
    color_info = { fg = vim.g.mnml.ui.colors.info },
    color_hint = { fg = vim.g.mnml.ui.colors.white },
  }
end

return M
