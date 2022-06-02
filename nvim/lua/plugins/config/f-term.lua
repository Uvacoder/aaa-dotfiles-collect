return {
  setup = function(use)
    use({
      "numToStr/FTerm.nvim",
      config = function()
        local map = require("core.utils").map

        require("FTerm").setup({
          dimensions = { height = 0.8, width = 0.8 },
          border = vim.g.my.border,
          hl = "NormalFloat",
        })

        map("n", ";", '<CMD>lua require("FTerm").toggle()<CR>')
        map("t", ";", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
        map("t", "<C-q>", '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
        map("t", "<esc>", [[<C-\><C-n>]])
      end,
    })
  end,
}
