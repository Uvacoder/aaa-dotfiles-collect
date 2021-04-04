vim.g.ale_disable_lsp = 1
vim.g.ale_sign_column_always = 1
vim.g.ale_linter_aliases = {vue = {"vue", "javascript"}}
vim.g.ale_linters = {vue = {"eslint", "vls"}}
vim.g.ale_fixers = {"prettier", "eslint", "remove_trailing_lines", "trim_whitespace"}
vim.g.ale_fix_on_save = 1
vim.g.ale_sign_error = " "
vim.g.ale_sign_warning = " "
vim.g.ale_echo_msg_error_str = "E"
vim.g.ale_echo_msg_warning_str = "W"
vim.g.ale_echo_msg_format = "[%severity%][%linter%] %s"

