return {
  setup = function(use)
    use({
      "vuciv/vim-bujo",
      config = function()
        vim.g["bujo#todo_file_path"] = tostring(os.getenv("HOME")) .. "/.dotfiles"
        vim.g["bujo#window_width"] = 45

        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<Leader>t", "<CMD>Todo<CR>", opts)
        vim.keymap.set("n", "<Leader>tg", "<CMD>Todo g<CR>", opts)
        vim.keymap.set("n", "<Leader>c", [[<Plug>BujoChecknormal]], opts)
        vim.keymap.set("n", "<Leader>a", [[<Plug>BujoAddnormal]], opts)
      end,
    })
  end,
}
