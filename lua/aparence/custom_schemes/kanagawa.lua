require("kanagawa").setup({
  compile = false,
  undercurl = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  theme = "dragon",
  background = {
    dark = "dragon",
    light = "dragon"
  },
})

vim.cmd("colorscheme kanagawa")
