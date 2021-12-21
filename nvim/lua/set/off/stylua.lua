return {
  setup = function(use)
    use({
      "ckipp01/stylua-nvim",

      config = function()
        vim.cmd([[
          augroup FormatAutogroupLua
          autocmd!
          autocmd BufWritePost *.lua lua require('stylua-nvim').format_file()
          augroup END
        ]])
      end,
    })
  end,
}
