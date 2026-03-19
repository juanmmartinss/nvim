return {
  {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
      'williamboman/mason.nvim',

      {
        'williamboman/mason-lspconfig.nvim',
        opts = {
          ensure_installed = {
            'ts_ls',       -- 👈 atualizado
            'solargraph',
            'html',
            'lua-language-server',
          }
        }
      },

      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local servers = {
        'ts_ls',   -- 👈 atualizado
        'html',
        'lua-language-server',
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
        })
        vim.lsp.enable(server)
      end

      vim.lsp.config('solargraph', {
        capabilities = capabilities,
        settings = {
          solargraph = {
            formatting = {
              enabled = false,
            },
          },
        },
      })
      vim.lsp.enable('solargraph')

      -- keymaps
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'References' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
    end,
  },
}
