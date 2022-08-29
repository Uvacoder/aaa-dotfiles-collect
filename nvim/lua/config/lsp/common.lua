local M = {}
local buf_map = require('utils').buf_map

M.on_attach = function(client, bufnr)
  -- stable
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
  -- nightly
  -- client.server_capabilities.documentFormattingProvider = false
  -- client.server_capabilities.documentRangeFormattingProvider = false

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_map(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
  buf_map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
  buf_map(bufnr, 'n', 'kk', '<cmd>lua vim.lsp.buf.hover()<CR>')
  buf_map(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
  buf_map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
  buf_map(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
  buf_map(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
  buf_map(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  buf_map(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
end

return M
