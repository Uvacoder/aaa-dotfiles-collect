return {
  setup = function(use)
    use({
      "vuciv/vim-bujo",
      config = function()
        local map = require("core.utils").map

        vim.g["bujo#todo_file_path"] = tostring(os.getenv("HOME")) .. "/.dotfiles/todo"
        vim.g["bujo#window_width"] = 55

        map("n", "<Leader>t", "<CMD>Todo<CR>")
        map("n", "<Leader>tg", "<CMD>Todo g<CR>")
        map("n", "<Leader>c", [[<Plug>BujoChecknormal]])
        map("n", "<Leader>a", [[<Plug>BujoAddnormal]])
      end,
    })
  end,
}
