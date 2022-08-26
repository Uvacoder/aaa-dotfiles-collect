return {
  setup = function(use)
    use({
      "numToStr/FTerm.nvim",
      config = function()
        local map = require("utils").map

        require("FTerm").setup({
          dimensions = { height = 0.9, width = 0.8 },
          border = vim.g.border_style,
          hl = "NormalFloat",
        })

        map("n", ".", '<CMD>lua require("FTerm").toggle()<CR>')
        map("t", ".", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
        map("t", "<C-q>", '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
        map("t", "<esc>", [[<C-\><C-n>]])
      end,
    })
  end,
}
