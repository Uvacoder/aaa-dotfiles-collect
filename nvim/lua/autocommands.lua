local format = vim.api.nvim_create_augroup("format", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	command = "EslintFixAll",
	pattern = "*.ts,*.tsx,*.js,*.jsx,*.vue,*.astro,*.mjs",
	group = format,
})

vim.api.nvim_create_autocmd("CursorHold", {
	buffer = bufnr,
	callback = function()
		local opts = {
			focusable = false,
			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
			border = "rounded",
			source = "always",
			prefix = " ",
			scope = "cursor",
		}
		vim.diagnostic.open_float(nil, opts)
	end,
})

-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel", "lir" },
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
	end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

vim.cmd([[
  set lazyredraw

  :command! WQ wq
  :command! WQ wq
  :command! Wq wq
  :command! Wqa wqa
  :command! W w
  :command! Q q

  augroup _general_settings
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup end

  function! PrintVariable()
    let string_under_cursor = expand("<cword>")
    execute "normal! o"
    execute "normal! i" . "console.log(' [DEBUG] " . string_under_cursor ": ', " . string_under_cursor . ");"
  endfunction

  highlight! DiagnosticLineNrError guifg=#FF0000 gui=bold
  highlight! DiagnosticLineNrWarn guifg=#FFA500 gui=bold
  highlight! DiagnosticLineNrInfo guifg=#00FFFF gui=bold
  highlight! DiagnosticLineNrHint guifg=#0000FF gui=bold

  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]])
