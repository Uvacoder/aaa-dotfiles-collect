local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	debug = false,
	sources = {
    formatting.prettier.with {
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "markdown",
        "graphql",
        "astro"
      },
      prefer_local = 'node_modules/.bin'
    },
    formatting.trim_newlines,
    formatting.trim_whitespace,
    formatting.stylua,
    diagnostics.eslint.with({
      prefer_local = 'node_modules/.bin'
    }),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
      -- increase timeout to 3 seconds
          -- vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 3000 })
          --[[ vim.lsp.buf.format({ bufnr = bufnr }) ]]
          vim.lsp.buf.format({ bufnr = bufnr, async = true })
				end,
			})
		end
	end,
})
