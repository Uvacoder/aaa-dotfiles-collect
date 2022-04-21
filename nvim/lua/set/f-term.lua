return {
  setup = function(use)
    use({
      "numToStr/FTerm.nvim",
      config = function()
        require("FTerm").setup({
          dimensions = { height = 0.8, width = 0.8 },
          border = vim.g.my_border,
        })

        local opts = { buffer = bufnr }
        vim.keymap.set("n", ";", '<CMD>lua require("FTerm").toggle()<CR>', opts)
        vim.keymap.set("t", ";", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
        vim.keymap.set("t", "q", '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>', opts)
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      end,
    })
  end,
}
