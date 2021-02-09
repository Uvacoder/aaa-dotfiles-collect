local map = require("helpers").map
local g = vim.g
local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

g.coc_global_extensions = { 'coc-snippets', 'coc-tailwindcss' }

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
-- Source: https://github.com/nanotee/nvim-lua-guide#vlua
function _G.check_back_space()
    local col = fn.col('.') - 1
    if col == 0 or fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

map('i', '<TAB>', 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true })
map('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { expr = true })


-- Use gh to show documentation in preview window.
function show_docs()
    local cw = fn.expand('<cword>')
    if fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        cmd('h '..cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        cmd('!'..vim.o.keywordprg..' '..cw)
    end
end

-- e <c-space> to trigger completion.
map('i', '\\<SPACE>', 'coc#refresh()', { expr = true })

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { expr = true })

-- e `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
map('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })

-- Multiple Cursors support
map('n', '\\b', '<Plug>(coc-cursors-word)', { noremap = false })

-- GoTo code navigation.
map('n', '\\d', '<Plug>(coc-definition)', { noremap = false })
map('n', '\\t', '<Plug>(coc-type-definition)', { noremap = false })
map('n', '\\i', '<Plug>(coc-implementation)', { noremap = false })
map('n', '\\rr', '<Plug>(coc-references)', { noremap = false })

-- Symbol renaming.
-- map('n', '<F2>', '<Plug>(coc-rename)', { noremap = false })

-- Formatting selected code.
map('x', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })
map('n', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })

-- Remap keys for applying codeAction to the current buffer.
map('n', '<leader>c', '<Plug>(coc-codeaction)', { noremap = false })

-- Mappings for CoCList
-- Show all diagnostics.
map('n', '\\a', ':CocList diagnostics<CR>')
-- Manage extensions.
map('n', '\\e', ':CocList extensions<CR>')
-- Show commands.
map('n', '\\c', ':CocList commands<CR>')

api.nvim_exec([[
    " autocmd CursorHold * silent call CocActionAsync('highlight')
    augroup mygroup
      autocmd!
      autocmd FileType javacript,vue,json setl formatexpr=CocAction('formatSelected')
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end
    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')
    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)
]], '')
