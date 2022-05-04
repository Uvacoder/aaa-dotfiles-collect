-- Automatically install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" })

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = vim.g.my.border })
    end,
    prompt_border = vim.g.my.border,
  },
  git = {
    clone_timeout = 6000, -- seconds
  },
  auto_clean = true,
  compile_on_sync = true,
})

-- Install your plugins here
return packer.startup({
  function(use)
    require("plugins/packer").setup(use)
    require("plugins/notify").setup(use)
    require("plugins/bujo").setup(use)
    -- require("plugins/colorizer").setup(use)
    -- require("plugins/trouble").setup(use)
    require("plugins/ctrlsf").setup(use)
    require("plugins/visual-multi").setup(use)
    require("plugins/auto-pairs").setup(use)
    require("plugins/modes").setup(use)
    require("plugins/neo-tree").setup(use)
    require("plugins/lua-line").setup(use)
    require("plugins/f-term").setup(use)
    require("plugins/coke-line").setup(use)
    require("plugins/git-signs").setup(use)
    require("plugins/formatter").setup(use)
    require("plugins/indent-blank-line").setup(use)
    require("plugins/tree-sitter").setup(use)
    require("plugins/cmp").setup(use)
    require("plugins/lsp-config").setup(use)
    require("themes/" .. vim.g.my.theme).setup(use)

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
      require("packer").sync()
    end
  end,
})
