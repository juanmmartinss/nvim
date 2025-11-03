return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = { "github/copilot.vim" },
  config = function()
    require("CopilotChat").setup({
      window = {
        layout = "float",
        width = 0.4,
        height = 0.6,
      },
    })

    vim.keymap.set("n", "<leader>cc", ":CopilotChat<CR>", { desc = "Abrir chat do Copilot" })
    vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Explicar código selecionado" })
    vim.keymap.set("v", "<leader>cf", ":CopilotChatFix<CR>", { desc = "Sugerir correção no código selecionado" })
  end,
}
