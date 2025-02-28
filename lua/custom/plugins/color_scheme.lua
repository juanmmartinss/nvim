return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "hard", -- Opções: "soft", "medium", "hard"
      transparent_mode = false,
    })
    vim.o.background = 'dark' -- Define fundo escuro
    vim.cmd("colorscheme gruvbox")
  end,
}
