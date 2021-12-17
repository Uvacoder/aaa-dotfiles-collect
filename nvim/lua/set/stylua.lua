return {
  setup = function(use)
    use({
      "ckipp01/stylua-nvim",

      config = function()
        vim.api.nvim_set_keymap("n", "fl", "<cmd>lua require('stylua-nvim').format_file()<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
