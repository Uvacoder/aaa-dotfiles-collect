local first_install = false

local ok, packer = pcall(require, "packer")
if not ok then
  local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
  vim.fn.delete(packer_path, "rf")
  local plugin_path = vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua"
  vim.fn.delete(plugin_path, "rf")

  print("Cloning packer..")
  first_install = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "20",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })

  vim.cmd([[packadd packer.nvim]])

  ok, packer = pcall(require, "packer")
  if not ok then
    error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
    return
  end
  print("Packer cloned successfully.")
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = vim.g.border_style })
    end,
    prompt_border = vim.g.border_style,
  },
  auto_clean = true,
  compile_on_sync = true,
})

return {
  packer = packer,
  first_install = first_install,
}
