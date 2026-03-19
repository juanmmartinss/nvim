-- Destacar (piscar) o texto quando copiar (Yank)
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight ao copiar (yank) texto',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
