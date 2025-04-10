-- Configuração do plugin git-conflict.nvim
return {
  'akinsho/git-conflict.nvim',
  version = "*",  -- Pega a versão mais recente
  config = function()
    -- Setup do plugin
    require('git-conflict').setup({
      -- Ativar os atalhos padrão de resolução de conflitos
      default_mappings = true,  -- Ativa os atalhos automáticos
      disable_diagnostics = false,  -- Não desabilita os diagnósticos
    })

    -- Atalhos personalizados para resolução de conflitos
    -- Usando <leader> para os atalhos
    vim.keymap.set('n', '<leader>co', '<Plug>(git-conflict-ours)', { noremap = true })
    vim.keymap.set('n', '<leader>ct', '<Plug>(git-conflict-theirs)', { noremap = true })
    vim.keymap.set('n', '<leader>cb', '<Plug>(git-conflict-both)', { noremap = true })
    vim.keymap.set('n', '<leader>c0', '<Plug>(git-conflict-none)', { noremap = true })
  end
}
