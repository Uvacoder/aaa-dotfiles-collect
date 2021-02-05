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

-- Use <c-space> to trigger completion.
map('i', '<\\-Space>', 'coc#refresh()', { expr = true })

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
map('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
map('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })

-- GoTo code navigation.
map('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
map('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
map('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
map('n', 'gr', '<Plug>(coc-references)', { noremap = false })

-- Remap keys for applying codeAction to the current buffer.
map('n', '<leader>c', '<Plug>(coc-codeaction)', { noremap = false })
