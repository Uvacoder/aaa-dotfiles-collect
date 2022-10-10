local status_ok, ntcnfgs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

ntcnfgs.setup({
	ensure_installed = {
		"astro",
		"css",
		"scss",
		"lua",
		"html",
		"vue",
		"javascript",
		"json",
		"typescript",
	}, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = { enable = true },
	autopairs = { enable = true },
	indent = { enable = true },
	context_commentstring = { enable = true, enable_autocmd = false },
})
