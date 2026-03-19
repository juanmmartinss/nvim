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
            'ts_ls',
            'solargraph',
            'html',
            'lua_ls',
	    'clangd',
            'pyright',
          }
        }
      },

      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('mason').setup()

      require('mason-lspconfig').setup({
        ensure_installed = {
          'clangd',      -- C
          'solargraph',  -- Ruby
          'pyright',     -- Python
          'lua_ls',      -- Lua (para os arquivos de config)
        }
      })

      local servers = {
        'tsserver',
        'html',
        'lua_ls',
        'clangd',
        'pyright',
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
