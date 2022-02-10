return {
  setup = function(use)
    use({
      "lambdalisue/battery.vim",

      config = function()
        -- vim.g["battery#component_format"] = "%v  %g"
        vim.g["battery#component_format"] = "%g"
        vim.g["battery#graph_symbol_fill"] = ""
        vim.g["battery#graph_symbol_null"] = ""
      end,
    })
  end,
}
