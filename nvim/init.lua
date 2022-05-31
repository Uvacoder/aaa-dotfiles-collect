vim.g.my = {
  theme = "one-dark",
  border = "double", -- "rounded", "single", "double"
  colors = {
    blue = "#52A0FF",
    green = "#84b360",
    yellow = "#d9c97c",
    red = "#ff7ab2",
    white = "#cbd5e1",
    float = "#161926",
    statusline = "#08080D",
    bg = "#000000", -- "#0F101A",
    -- float = "#161B22",
    -- statusline = "#08080D",
    -- bg = "#0D1117",
  },
}
require("options")
require("plugins")
require("keymaps")
require("autocmds")
