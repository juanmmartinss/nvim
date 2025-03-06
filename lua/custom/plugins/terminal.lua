return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<leader>t]],
        direction = "float", -- Pode ser 'horizontal', 'vertical', 'tab', 'float'
        shade_terminals = true,
      }
    end
  }
}

