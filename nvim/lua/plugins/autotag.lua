local status_ok, nttg = pcall(require, "nvim-ts-autotag")
if not status_ok then
	return
end

nttg.setup({
	filetypes = {
		"html",
		"javascript",
		"typescript",
		"vue",
		"jsx",
		"javascriptreact",
		"typescriptreact",
		"tsx",
		"markdown",
	},
})
