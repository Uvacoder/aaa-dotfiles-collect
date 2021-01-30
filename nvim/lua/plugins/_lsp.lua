local map = require("helpers").map
-- To install server:
--   :LspInstallServer
-- To uninstall server:
--   :LspUninstallServer server-name
-- $XDG_DATA_HOME/vim-lsp-settings/servers

vim.g.lsp_settings_servers_dir = '$HOME/.local/share/vim-lsp-settings/servers'
vim.g.lsp_settings_filetype_css = {'css-languageserver', 'tailwindcss-intellisense'}
vim.g.lsp_settings_filetype_html = {'html-languageserver', 'tailwindcss-intellisense'}
vim.g.lsp_settings_filetype_vue = 'vue-language-server'

map('1', '<expr> <Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"')
map('1', '<expr> <S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
map('1', '<expr> <cr>', 'pumvisible() ? asyncomplete#close_popup() : "\\<cr>"')
map('1', '<c-space> <Plug>', (asyncomplete_force_refresh))

vim.cmd('autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif')
