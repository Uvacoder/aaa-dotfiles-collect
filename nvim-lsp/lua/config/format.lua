require("format").setup{
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    javascript = {
        {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    vue = {
        {cmd = {"./node_modules/.bin/prettier -w"}}
    },
    css = {
        {cmd = {"./node_modules/.bin/prettier -w"}}
    },
    markdown = {
        {cmd = {"./node_modules/.bin/prettier -w"}},
        {
            cmd = {"black"},
            start_pattern = "^```python$",
            end_pattern = "^```$",
            target = "current"
        }
    }
}

vim.api.nvim_exec([[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.vue,*.css FormatWrite
    augroup END
]], true)
