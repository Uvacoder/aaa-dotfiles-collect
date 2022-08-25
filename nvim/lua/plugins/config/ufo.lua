return {
  setup = function(use)
    use({
      "kevinhwang91/nvim-ufo",
      requires = "kevinhwang91/promise-async",
      config = function()
        -- vim.wo.foldcolumn = '0'
        -- vim.wo.foldlevel = 20 -- feel free to decrease the value
        -- vim.wo.foldenable = true
        -- vim.wo.foldmethod = "indent",
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true,
        }

        local handler = function(virtText, lnum, endLnum, width, truncate)
          local newVirtText = {}
          local suffix = ("  %d "):format(endLnum - lnum)
          local sufWidth = vim.fn.strdisplaywidth(suffix)
          local targetWidth = width - sufWidth
          local curWidth = 0
          for _, chunk in ipairs(virtText) do
            local chunkText = chunk[1]
            local chunkWidth = vim.fn.strdisplaywidth(chunkText)
            if targetWidth > curWidth + chunkWidth then
              table.insert(newVirtText, chunk)
            else
              chunkText = truncate(chunkText, targetWidth - curWidth)
              local hlGroup = chunk[2]
              table.insert(newVirtText, { chunkText, hlGroup })
              chunkWidth = vim.fn.strdisplaywidth(chunkText)
              -- str width returned from truncate() may less than 2nd argument, need padding
              if curWidth + chunkWidth < targetWidth then
                suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
              end
              break
            end
            curWidth = curWidth + chunkWidth
          end
          table.insert(newVirtText, { suffix, "MoreMsg" })
          return newVirtText
        end

        -- global handler
        require("ufo").setup({
          fold_virt_text_handler = handler,
        })
      end,
    })
  end,
}