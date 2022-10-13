-- https://github.com/akinsho/bufferline.nvim
return {
  setup = function(use)
    use({
      'akinsho/bufferline.nvim', 
      tag = "v2.*", 
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require("bufferline").setup({
          options = {
            diagnostics = "nvim_lsp",
          }
        })
      end,
    })
  end,
}
