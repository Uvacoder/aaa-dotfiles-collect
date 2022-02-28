return {
  setup = function(use)
    use({
      "nvim-telescope/telescope.nvim",

      requires = {
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        { "nvim-lua/popup.nvim", opt = true },
        { "nvim-lua/plenary.nvim", opt = true },
      },

      config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
          defaults = {
            file_ignore_patterns = { "node_modules", ".git" },
            mappings = {
              i = {
                ["<esc>"] = actions.close,
                ["<C-u>"] = false,
                ["<C-d>"] = false,
              },
            },
          },
        })

        require("telescope").load_extension("projects")
        -- Normal mode  Insert mode     Action
        -- f            <c-f>           find_project_files
        -- b            <c-b>           browse_project_files
        -- d            <c-d>           delete_project
        -- s            <c-s>           search_in_project_files
        -- r            <c-r>           recent_project_files
        -- w            <c-w>           change_working_directory

        require("telescope").load_extension("fzf")

        vim.keymap.set("n", "<leader><space>", ":Telescope buffers<cr>", { noremap = true, silent = true })
        vim.keymap.set("n", "ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
        vim.keymap.set("n", "fs", ":Telescope grep_string<cr>", { noremap = true, silent = true })
        vim.keymap.set("n", "fg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
        -- git navigation
        vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<cr>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gs", ":Telescope git_status<cr>", { noremap = true, silent = true })
      end,
    })
  end,
}
