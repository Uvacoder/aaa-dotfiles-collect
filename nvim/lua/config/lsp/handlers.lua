-- LSP settings (for overriding per client)
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = vim.g.border_style,
})

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = vim.g.border_style,
})

vim.lsp.handlers['textDocument/publishDiagnostics'] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = '',
      spacing = 2,
    },
    signs = false,
    float = {
      border = vim.g.border_style,
      header = '',
      prefix = '',
      format = function(diagnostic)
        return string.format(
          ' %s\n%s\n%s',
          diagnostic.source,
          diagnostic.user_data.lsp.code,
          diagnostic.message
        )
      end,
    },
  })

-- UI
local signs = { Error = ' ', Warn = ' ▲', Hint = ' ', Info = ' ﲉ' }

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
