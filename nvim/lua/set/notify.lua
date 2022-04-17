return {
  setup = function(use)
    use({
      "rcarriga/nvim-notify",
      config = function()
        vim.notify = require("notify")
      end,
    })
  end,
}
