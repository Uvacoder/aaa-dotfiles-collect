vim.g.coc_global_extensions = { 'coc-tailwindcss' }

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

vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { expr = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { expr = true })


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

vim.api.nvim_set_keymap('n', 'K', '<CMD>lua show_docs()<CR>', {silent = true})

-- Use <c-space> to trigger completion.
vim.api.nvim_set_keymap('i', '<C-SPACE>', 'coc#refresh()', { expr = true })

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
vim.api.nvim_set_keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
vim.api.nvim_set_keymap('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })

-- Multiple Cursors support
vim.api.nvim_set_keymap('n', 'gb', '<Plug>(coc-cursors-word)', { noremap = false })

-- GoTo code navigation.
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { noremap = false })

-- Symbol renaming.
vim.api.nvim_set_keymap('n', '<F2>', '<Plug>(coc-rename)', { noremap = false })

-- Formatting selected code.
vim.api.nvim_set_keymap('x', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })
vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format-selected)', { noremap = false })

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
vim.api.nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', { noremap = false })
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-selected)', { noremap = false })

-- Remap keys for applying codeAction to the current buffer.
vim.api.nvim_set_keymap('n', '<leader>c', '<Plug>(coc-codeaction)', { noremap = false })

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
-- vim.api.nvim_set_keymap('x', 'if', '<Plug>(coc-funcobj-i)', { noremap = false })
-- vim.api.nvim_set_keymap('o', 'if', '<Plug>(coc-funcobj-i)', { noremap = false })
-- vim.api.nvim_set_keymap('x', 'af', '<Plug>(coc-funcobj-a)', { noremap = false })
-- vim.api.nvim_set_keymap('o', 'af', '<Plug>(coc-funcobj-a)', { noremap = false })

-- vim.api.nvim_set_keymap('x', 'ic', '<Plug>(coc-classobj-i)', { noremap = false })
-- vim.api.nvim_set_keymap('o', 'ic', '<Plug>(coc-classobj-i)', { noremap = false })
-- vim.api.nvim_set_keymap('x', 'ac', '<Plug>(coc-classobj-a)', { noremap = false })
-- vim.api.nvim_set_keymap('o', 'ac', '<Plug>(coc-classobj-a)', { noremap = false })

-- Remap <C-F> and <C-B> for scroll float windows/popups.
-- vim.api.nvim_set_keymap('n', '<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-F>"', { expr = true })
-- vim.api.nvim_set_keymap('i', '<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"', { expr = true })
-- vim.api.nvim_set_keymap('n', '<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-B>"', { expr = true })
-- vim.api.nvim_set_keymap('i', '<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"', { expr = true })

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
vim.api.nvim_set_keymap('n', '<C-S>', '<Plug>(coc-range-select)', { noremap = false })
vim.api.nvim_set_keymap('x', '<C-S>', '<Plug>(coc-range-select)', { noremap = false })

-- Mappings for CoCList
-- Show all diagnostics.
-- vim.api.nvim_set_keymap('n', '\\a', ':CocList diagnostics<CR>')
-- Manage extensions.
-- vim.api.nvim_set_keymap('n', '\\e', ':CocList extensions<CR>')
-- Show commands.
-- vim.api.nvim_set_keymap('n', '\\c', ':CocList commands<CR>')
-- Find symbol of current document.
-- vim.api.nvim_set_keymap('n', '<Space>o', ':CocList outline<CR>')
-- Search workspace symbols.
-- vim.api.nvim_set_keymap('n', '\\s', ':CocList -I symbols<CR>')
-- Do default action for next item.
-- vim.api.nvim_set_keymap('n', '\\j', ':CocNext<CR>')
-- Do default action for previous item.
-- vim.api.nvim_set_keymap('n', '\\k', ':CocPrev<CR>')
-- Resume latest coc list.
-- vim.api.nvim_set_keymap('n', '\\p', ':CocListResume<CR>')

vim.api.nvim_exec([[
  " autocmd User EasyMotionPromptBegin silent! CocDisable
  " autocmd User EasyMotionPromptEnd silent! CocEnable
  autocmd CursorHold * silent call CocActionAsync('highlight')

  augroup mygroup
    autocmd!
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end
]], '')
