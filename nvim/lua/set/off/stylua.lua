return {
  setup = function(use)
    use({
      "ckipp01/stylua-nvim",

      config = function()
        vim.cmd("autocmd BufWritePost *.lua lua require('stylua-nvim').format_file()")
      end,
    })
  end,
}
