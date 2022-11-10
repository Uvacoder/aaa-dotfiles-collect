return {
  setup = function(use)
    use({
      "wesleimp/stylua.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        vim.cmd([[ command! FormatLua execute 'lua require("stylua").format()' ]])
      end,
    })
  end,
}
