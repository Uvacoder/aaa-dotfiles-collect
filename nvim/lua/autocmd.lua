local cmd = vim.cmd

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')

vim.api.nvim_exec([[
  augroup NvimTree 
    au!
    au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
 augroup END
]], false)

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

