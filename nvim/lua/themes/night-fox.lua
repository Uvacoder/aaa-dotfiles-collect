return {
  setup = function(use)
    use({
      "EdenEast/nightfox.nvim",

      config = function()
        require("nightfox").load("nightfox") -- nightfox, nordfox, duskfox
      end,
    })
  end,
}
