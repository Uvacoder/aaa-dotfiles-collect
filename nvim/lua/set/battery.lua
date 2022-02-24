return {
  setup = function(use)
    use({
      "lambdalisue/battery.vim",

      config = function()
        vim.cmd([[
          fun! Battery_icon_full()
            let l:battery_icon = { 4: "", 3: "", 2: "", 1: "", 0: "" }
            let l:backend = battery#backend()
            let l:nf = float2nr(round(backend.value / 20.0))
            return printf('%s', get(battery_icon, nf))
          endfun
        ]])

        vim.cmd([[
          fun! Battery_icon_warn()
            let l:battery_icon = { 4: "", 3: "", 2: "", 1: "", 0: "" }
            let l:backend = battery#backend()
            let l:nf = float2nr(round(backend.value / 20.0))
            return printf('%s', get(battery_icon, nf))
          endfun
        ]])

        vim.cmd([[
          fun! Battery_icon_low()
            let l:battery_icon = { 4: "", 3: "", 2: "", 1: "", 0: "" }
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
