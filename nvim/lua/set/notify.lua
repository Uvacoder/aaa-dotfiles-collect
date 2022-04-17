return {
  setup = function(use)
    use({
      "rcarriga/nvim-notify",
      config = function()
        local notify = require("notify").setup({
          render = "minimal",
        })
        vim.notify = notify
      end,
    })
  end,
}
