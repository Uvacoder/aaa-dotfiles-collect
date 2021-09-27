return {
  setup = function(use)
    use {
      'neovim/nvim-lspconfig',

      requires = {
        'kabouzeid/nvim-lspinstall',
        'hrsh7th/nvim-compe',
        'hrsh7th/vim-vsnip',
        'rafamadriz/friendly-snippets'
      },

      config = function()
        local nvim_lsp = require('lspconfig')

        -- Use an on_attach function to only map the following keys 
        -- after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
          local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
          local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

          --Enable completion triggered by <c-x><c-o>
          buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

          -- Mappings. -- See `:help vim.lsp.*` for documentation on any of the below functions
          buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
          buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
          buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
          buf_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })
          buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
          buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
          buf_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })

          -- vue 3 cause errors
          -- Set autocommands conditional on server_capabilities
          -- if client.resolved_capabilities.document_highlight then
          --   vim.api.nvim_exec([[
          --   augroup lsp_document_highlight
          --     autocmd! * <buffer>
          --     autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
          --     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          --   augroup END
          --   ]], false)
          -- end
          -- auto formatting
          if client.resolved_capabilities.document_formatting then
            vim.api.nvim_exec([[
            augroup lsp_formatting_sync
              autocmd! * <buffer>
              autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]], false)
          end
          -- lsp_signature
        end

        -- use lsp snippet
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        capabilities.textDocument.completion.completionItem.resolveSupport = {
          properties = { 'documentation', 'detail', 'additionalTextEdits' }
        }  

        -- Use a loop to conveniently call 'setup' on multiple servers and
        -- map buffer local keybindings when the language server attaches
        local function setup_servers()
          require'lspinstall'.setup()

          -- get all installed servers
          local servers = require'lspinstall'.installed_servers()
          for _, server in pairs(servers) do
            nvim_lsp[server].setup{
              on_attach = on_attach,
              capabilities = capabilities
            }
          end
        end

        setup_servers()

        -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
        require'lspinstall'.post_install_hook = function ()
          setup_servers() -- reload installed servers
          vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
        end

        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = false,
            virtual_text = false,
            signs = true,
            update_in_insert = true,
          }
        )

        -- the default lsp diagnostic letters with prettier symbols
        vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
        vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
        vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
        vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})
      end
    }
  end
}
