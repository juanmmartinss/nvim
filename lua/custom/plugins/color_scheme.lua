-- return {
--   'ellisonleao/gruvbox.nvim',
--   priority = 1000,
--   config = function()
--     require("gruvbox").setup({
--       contrast = "hard", -- Opções: "soft", "medium", "hard"
--       transparent_mode = false,
--     })
--     vim.o.background = 'dark' -- Define fundo escuro
--     vim.cmd("colorscheme gruvbox")
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,         -- do not set background color
      dimInactive = false,         -- dim inactive window
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- custom highlight tweaks
        return {}
      end,
      theme = "dragon",              -- default theme
      background = {
        dark = "dragon",
        light = "dragon"
      },
    })

    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa")
  end,
}

