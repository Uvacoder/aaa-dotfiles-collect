return {
  setup = function(use)
    use({
      "EdenEast/nightfox.nvim",

      config = function()
        require("nightfox").load("duskfox") -- nightfox, nordfox, duskfox
      end,
    })
  end,
}
