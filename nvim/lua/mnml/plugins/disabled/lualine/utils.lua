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
    added = { fg = vim.g.my.colors.green },
    modified = { fg = vim.g.my.colors.yellow },
    removed = { fg = vim.g.my.colors.red }
  }
end

M.diagnostics_color = function()
  return {
    color_error = { fg = vim.g.my.colors.red },
    color_warn = { fg = vim.g.my.colors.yellow },
    color_info = { fg = vim.g.my.colors.blue },
    color_hint = { fg = vim.g.my.colors.white },
  }
end

return M
