return {
  setup = function(use)
    use({
      "wbthomason/packer.nvim",
      config = function()
        local map = require("mnml.utils").map

        map("n", "<lader>pc", "<cmd>PackerCompile<cr>")
        map("n", "<leader>ps", "<cmd>PackerSync<cr>")
      end,
    })
  end,
}
