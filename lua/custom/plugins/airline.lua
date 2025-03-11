return {
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
  config = function()
    -- Configuração do vim-airline aqui
    vim.g['airline#extensions#tabline#enabled'] = 1  -- Habilita a aba de navegação
    vim.g['airline#extensions#fugitive#enabled'] = 1  -- Ativa o plugin Fugitive se usado
  end
}
