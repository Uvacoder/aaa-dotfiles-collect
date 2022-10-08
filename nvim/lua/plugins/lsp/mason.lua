local status_ok, msn = pcall(require, "mason")
if not status_ok then
	return
end

local msnl_status_ok, msn_lspcnfg = pcall(require, "mason-lspconfig")
if not msnl_status_ok then
	return
end

local lspcnfg_status_ok, lspcnfg = pcall(require, "lspconfig")
if not lspcnfg_status_ok then
	return
end

msn.setup({
	ui = {
		check_outdated_packages_on_open = true,
		border = vim.g.border_style,
	},
})

msn_lspcnfg.setup({
	ensure_installed = {
		"astro",
		"tsserver",
		"volar",
		"tailwindcss",
    --[[ "eslint", ]]
	},
	automatic_installation = true,
})

local opts = {}

msn_lspcnfg.setup_handlers({
	-- The first entry (withou-language-servert a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		opts = {
			on_attach = require("plugins.lsp.handlers").on_attach,
			capabilities = require("plugins.lsp.handlers").capabilities,
		}

		if server == "tailwindcss" then
			opts = vim.tbl_deep_extend("force", require("plugins.lsp.settings.tailwindcss"), opts)
		end

		if server == "volar" then
			opts = vim.tbl_deep_extend("force", require("plugins.lsp.settings.volar"), opts)
		end

		lspcnfg[server_name].setup(opts)
	end,
})
