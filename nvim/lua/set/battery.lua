return {
  setup = function(use)
    use({
      "lambdalisue/battery.vim",

      config = function()
        --- let l:battery_icon = { 5: "", 4: "", 3: "", 2: "", 1: ""}
        vim.cmd([[
          fun! Battery_icon()
            let l:battery_icon = { 5: "ﯦ", 4: "", 3: "", 2: "", 1: " ﮣ "}
            let l:backend = battery#backend()
            let l:nf = float2nr(round(backend.value / 20.0))
            return printf('%s', get(battery_icon, nf))
          endfun
        ]])

        vim.g["battery#component_format"] = "%v%% %s"
        vim.g["battery#symbol_charging"] = ""
        vim.g["battery#symbol_discharging"] = ""
        vim.g["battery#graph_width"] = 5

        -- vim.g["battery#component_format"] = "%g"
        -- vim.g["battery#graph_symbol_fill"] = ""
        -- vim.g["battery#graph_symbol_null"] = ""
      end,
    })
  end,
}
