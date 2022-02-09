local ns = 0
-- vim.api.nvim_set_hl(ns, "Normal", { bg = vim.g.my_colors.bg })
-- vim.api.nvim_set_hl(ns, "EndOfBuffer", { bg = vim.g.my_colors.bg })
-- vim.api.nvim_set_hl(ns, "SignColumn", { bg = vim.g.my_colors.bg })
-- vim.api.nvim_set_hl(ns, "CursorLine", { bg = vim.g.my_colors.bg_alt })
-- vim.api.nvim_set_hl(ns, "CursorLineNC", { bg = vim.g.my_colors.bg_alt })

-- vim.api.nvim_set_hl(ns, "NvimTreeNormal", { bg = vim.g.my_colors.bg_alt })
-- vim.api.nvim_set_hl(ns, "NvimTreeEndOfBuffer", { bg = vim.g.my_colors.bg_alt })
-- vim.api.nvim_set_hl(ns, "NvimTreeVertSplit", { fg = vim.g.my_colors.bg_alt })
-- vim.api.nvim_set_hl(ns, "NvimTreeCursorLine", { bg = vim.g.my_colors.bg_select, fg = vim.g.my_colors.white })

vim.api.nvim_set_hl(ns, "GitSignsAdd", { fg = vim.g.my_colors.green })
vim.api.nvim_set_hl(ns, "GitSignsChange", { fg = vim.g.my_colors.yellow })
vim.api.nvim_set_hl(ns, "GitSignsDelete", { fg = vim.g.my_colors.red })
vim.api.nvim_set_hl(ns, "DiagnosticSignHint", { fg = vim.g.my_colors.purple })

vim.api.nvim_set_hl(ns, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
vim.api.nvim_set_hl(ns, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
vim.api.nvim_set_hl(ns, "DiagnosticSignError", { fg = vim.g.my_colors.red })

vim.api.nvim_set_hl(ns, "IndentBlanklineChar", { fg = vim.g.my_colors.bg })
