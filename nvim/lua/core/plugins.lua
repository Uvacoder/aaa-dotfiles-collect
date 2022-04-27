local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" })

require("packer").startup({
  function(use)
    require("set/packer").setup(use)
    require("set/notify").setup(use)
    require("set/bujo").setup(use)
    -- require("set/colorizer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/modes").setup(use)
    require("set/neo-tree").setup(use)
    require("set/lua-line").setup(use)
    require("set/f-term").setup(use)
    require("set/buffer-line").setup(use)
    require("set/git-signs").setup(use)
    require("set/formatter").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require("themes/" .. vim.g.my_ui.theme).setup(use)

    if packer_bootstrap then
      require("packer").sync()
    end
  end,

  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = vim.g.my_border })
      end,
      prompt_border = vim.g.my_border,
    },
    git = {
      clone_timeout = 6000, -- seconds
    },
    auto_clean = true,
    compile_on_sync = true,
  },
})
