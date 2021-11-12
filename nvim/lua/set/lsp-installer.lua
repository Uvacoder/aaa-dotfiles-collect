return {
  setup = function(use)
    use({
      "williamboman/nvim-lsp-installer", -- Install language servers

      requires = {},

      config = function()
        local lsp_installer = require("nvim-lsp-installer")

        lsp_installer.on_server_ready(function(server)
          local opts = {}
          server:setup(opts)
          vim.cmd([[ do User LspAttachBuffers ]])
        end)
      end,
    })
  end,
}
