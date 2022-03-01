return {
  setup = function(use)
    use({
      "lambdalisue/battery.vim",

      config = function()
        vim.g["battery#component_format"] = "%s %v%%"
        vim.g["battery#symbol_charging"] = "ﮣ"
        vim.g["battery#symbol_discharging"] = ""
        vim.g["battery#graph_width"] = 5
      end,
    })
  end,
}
