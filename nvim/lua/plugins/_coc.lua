local keymap = vim.api.nvim_set_keymap

vim.g.coc_global_extensions = {'coc-snippets', 'coc-tailwindcss' }

function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

keymap('i', '<TAB>', 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true })
keymap('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { expr = true })

-- Use gh to show documentation in preview window.
function show_docs()
  local cw = vim.fn.expand('<cword>')
  if fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
    vim.cmd('h '..cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.cmd('!'..vim.o.keywordprg..' '..cw)
  end
end

keymap('n', 'K', '<CMD>lua show_docs()<CR>', {silent = true})

-- Use <c-space> to trigger completion.
keymap('i', '<C-SPACE>', 'coc#refresh()', { expr = true })

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
keymap('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })

-- Multiple Cursors support
keymap('n', 'gb', '<Plug>(coc-cursors-word)', { noremap = false })

-- GoTo code navigation.
keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
keymap('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
keymap('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
keymap('n', 'gr', '<Plug>(coc-references)', { noremap = false })

-- Symbol renaming.
keymap('n', '<F2>', '<Plug>(coc-rename)', { noremap = false })

-- Formatting selected code.
keymap('x', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })

-- Mappings for CoCList
keymap('n', '\\a', ':CocList diagnostics<CR>', { noremap = false })
keymap('n', '\\e', ':CocList extensions<CR>', { noremap = false })
keymap('n', '\\c', ':CocList commands<CR>', { noremap = false })
keymap('n', '<Space>o', ':CocList outline<CR>', { noremap = false })
keymap('n', '\\s', ':CocList -I symbols<CR>', { noremap = false })
keymap('n', '\\p', ':CocListResume<CR>',{ noremap = false })

vim.api.nvim_exec([[
  autocmd CursorHold * silent call CocActionAsync('highlight')
  augroup mygroup
    autocmd!
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end
]], '')
