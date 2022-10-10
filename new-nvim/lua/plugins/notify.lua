local status_ok, nnotify = pcall(require, "nvim-notify")
if not status_ok then
	return
end

nnotify.setup({
	stages = "static",
	render = "minimal",
	minimum_width = 10,
})
vim.notify = nnotify

-- :Notifications
