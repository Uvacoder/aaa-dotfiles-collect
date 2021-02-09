local g = vim.g

g.ale_disable_lsp = 1
g.ale_sign_column_always = 1
g.ale_linter_aliases = { vue = { 'vue', 'javascript' }}
g.ale_linters = { vue = {'eslint', 'vls'}}
g.ale_fixers = {'prettier', 'eslint', 'luafmt'}
g.ale_fix_on_save = 1
g.ale_sign_error = ' '
g.ale_sign_warning = ' '
g.ale_echo_msg_error_str = 'E'
g.ale_echo_msg_warning_str = 'W'
g.ale_echo_msg_format = '[%severity%][%linter%] %s'
