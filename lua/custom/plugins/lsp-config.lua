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
            'tsserver',
            'solargraph',
            'html',
            'lua_ls',
          }
        }
      },

      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local lspconfig = vim.lsp.config
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local servers = {
        'tsserver',
        'html',
        'lua_ls',
      }

      for _, server_name in ipairs(servers) do
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end

      lspconfig.solargraph.setup({
        capabilities = capabilities,
        settings = {
          solargraph = {
            formatting = {
              enabled = false,
            },
          },
        },
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'LSP Goto Definition' })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'LSP Goto References' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })
    end,
  },
}
