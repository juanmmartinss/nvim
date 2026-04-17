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
            'lua_ls',  -- 👈 Nome corrigido
            'clangd',  -- 👈 Adicionado para o seu C
          }
        }
      },
      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local servers = {
        'ts_ls',
        'html',
        'lua_ls', -- 👈 Nome corrigido
        'clangd', -- 👈 Adicionado para o seu C
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

      -- KEYMAPS CORRIGIDOS PARA USAR O TELESCOPE (A JANELINHA)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
      vim.keymap.set('n', '<leader>gd', require('telescope.builtin').lsp_definitions, { desc = 'Goto Definition (Telescope)' })
      vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, { desc = 'References (Telescope)' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
    end,
  },
}
