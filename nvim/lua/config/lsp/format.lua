require("format").setup{
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    html = {
        {cmd = {"prettier -w"}}
        -- {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    javascript = {
        {cmd = {"prettier -w"}}
        -- {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    vue = {
        {cmd = {"prettier -w"}}
        -- {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    css = {
        {cmd = {"prettier -w"}}
    },
    markdown = {
        {cmd = {"prettier -w"}},
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
      autocmd BufWritePost *.html,*.js,*.vue,*.css FormatWrite
    augroup END
]], true)
