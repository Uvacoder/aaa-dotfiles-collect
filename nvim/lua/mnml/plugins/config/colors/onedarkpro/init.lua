-- https://github.com/olimorris/onedarkpro.nvim
return {
  setup = function(use)
    use({
      "olimorris/onedarkpro.nvim",
      config = function()
        require("onedarkpro").setup({
          theme = "onedark_vivid",
          styles = {
            comments = "italic",
            functions = "bold",
            keywords = "italic",
            strings = "NONE",
            variables = "NONE",
            virtual_text = "NONE"
          },
          colors = {
            onedark_vivid = {
             bg = vim.g.mnml.ui.colors.bg
            },
          }
        })
        vim.cmd("colorscheme onedarkpro")
      end,
    })
  end,
}
