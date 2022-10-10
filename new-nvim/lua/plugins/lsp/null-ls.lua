--[[ https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/lsp/null-ls.lua ]]
local status_ok, nllls = pcall(require, "null-ls")
if not status_ok then
	return
end

local formatting = nllls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nllls.setup({
	debug = false,
	sources = {
		formatting.trim_newlines,
		formatting.trim_whitespace,
		formatting.stylua,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr, async = true })
				end,
			})
		end
	end,
})
