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

    vim.keymap.set("n", "<leader>cc", ":CopilotChat<CR>", { desc = "Copilot Chat" })
    vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Explain selected code" })
    vim.keymap.set("v", "<leader>cf", ":CopilotChatFix<CR>", { desc = "Suggest a correction to the selected code" })
  end,
}
