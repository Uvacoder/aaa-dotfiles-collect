local map = require("helpers").map

vim.g.coc_global_extensions = { 'coc-snippets', 'coc-tailwindcss' }

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
-- Source: https://github.com/nanotee/nvim-lua-guide#vlua
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

map('i', '<TAB>', 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true })
map('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { expr = true })


-- Use gh to show documentation in preview window.
function show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
    vim.cmd('h '..cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.cmd('!'..vim.o.keywordprg..' '..cw)
  end
end

map('n', 'K', '<CMD>lua show_docs()<CR>')

-- Use <c-space> to trigger completion.
map('i', '<C-Space>', 'coc#refresh()', { expr = true })

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
map('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })

-- Multiple Cursors support
map('n', 'gb', '<Plug>(coc-cursors-word)', { noremap = false })

-- GoTo code navigation.
map('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
map('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
map('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
map('n', 'gr', '<Plug>(coc-references)', { noremap = false })

-- Symbol renaming.
map('n', '<F2>', '<Plug>(coc-rename)', { noremap = false })

-- Formatting selected code.
map('x', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })
map('n', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
map('x', '<leader>a', '<Plug>(coc-codeaction-selected)', { noremap = false })
map('n', '<leader>a', '<Plug>(coc-codeaction-selected)', { noremap = false })

-- Remap keys for applying codeAction to the current buffer.
map('n', '<leader>c', '<Plug>(coc-codeaction)', { noremap = false })

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
-- map('x', 'if', '<Plug>(coc-funcobj-i)', { noremap = false })
-- map('o', 'if', '<Plug>(coc-funcobj-i)', { noremap = false })
-- map('x', 'af', '<Plug>(coc-funcobj-a)', { noremap = false })
-- map('o', 'af', '<Plug>(coc-funcobj-a)', { noremap = false })

-- map('x', 'ic', '<Plug>(coc-classobj-i)', { noremap = false })
-- map('o', 'ic', '<Plug>(coc-classobj-i)', { noremap = false })
-- map('x', 'ac', '<Plug>(coc-classobj-a)', { noremap = false })
-- map('o', 'ac', '<Plug>(coc-classobj-a)', { noremap = false })

-- Remap <C-F> and <C-B> for scroll float windows/popups.
-- map('n', '<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-F>"', { expr = true })
-- map('i', '<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"', { expr = true })
-- map('n', '<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-B>"', { expr = true })
-- map('i', '<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"', { expr = true })

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
map('n', '<C-S>', '<Plug>(coc-range-select)', { noremap = false })
map('x', '<C-S>', '<Plug>(coc-range-select)', { noremap = false })

-- Mappings for CoCList
-- Show all diagnostics.
-- map('n', '\\a', ':CocList diagnostics<CR>')
-- Manage extensions.
-- map('n', '\\e', ':CocList extensions<CR>')
-- Show commands.
-- map('n', '\\c', ':CocList commands<CR>')
-- Find symbol of current document.
-- map('n', '<Space>o', ':CocList outline<CR>')
-- Search workspace symbols.
-- map('n', '\\s', ':CocList -I symbols<CR>')
-- Do default action for next item.
-- map('n', '\\j', ':CocNext<CR>')
-- Do default action for previous item.
-- map('n', '\\k', ':CocPrev<CR>')
-- Resume latest coc list.
-- map('n', '\\p', ':CocListResume<CR>')

vim.cmd(' autocmd CursorHold * silent call CocActionAsync("highlight") ')
vim.cmd(' autocmd User CocJumpPlaceholder call CocActionAsync("showSignatureHelp") ')
