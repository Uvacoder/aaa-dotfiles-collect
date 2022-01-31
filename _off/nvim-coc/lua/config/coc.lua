vim.g.coc_global_extensions = {
  "coc-prettier",
  "coc-eslint",
  "coc-snippets"
  -- "coc-tailwindcss"
}

function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

function show_docs()
  local cw = vim.fn.expand("<cword>")
  if vim.fn.index({"vim", "help"}, vim.bo.filetype) >= 0 then
    vim.cmd("h " .. cw)
  elseif vim.api.nvim_eval("coc#rpc#ready()") then
    vim.fn.CocActionAsync("doHover")
  else
    vim.cmd("!" .. vim.o.keywordprg .. " " .. cw)
  end
end

local keymap = vim.keymap.set

keymap('i', '<TAB>', 'pumvisible() ? "<C->" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { noremap = true, silent = true, expr = true })
keymap('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { noremap = true, silent = true, expr = true })
keymap('i', '<C-SPACE>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { noremap = true, silent = true, expr = true })

keymap("n", "gh", "<CMD>lua show_docs()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>cx", ":CocRestart<CR>", {silent = true})

-- GoTo code navigation.
keymap("n", "gd", "<Plug>(coc-definition)", {noremap = false})
keymap("n", "gy", "<Plug>(coc-type-definition)", {noremap = false})
keymap("n", "gi", "<Plug>(coc-implementation)", {noremap = false})
keymap("n", "gr", "<Plug>(coc-references)", {noremap = false})
