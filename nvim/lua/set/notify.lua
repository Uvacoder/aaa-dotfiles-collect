return {
  setup = function(use)
    use({
      "rcarriga/nvim-notify",
      config = function()
        local notify = require("notify")
        notify.setup({
          stages = "static",
          render = "minimal",
          minimum_width = 10,
        })
        vim.notify = notify

        -- :Notifications
      end,
    })
  end,
}
