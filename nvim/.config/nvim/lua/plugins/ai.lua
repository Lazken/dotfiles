return {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        openai_params = {
          model = "o4-mini-2025-04-16",
          frequency_penalty = 0,
          presence_penalty = 0,
        }
      })
      vim.keymap.set("n", "<leader>aa", vim.cmd.ChatGPT, {})
      vim.keymap.set("n", "<leader>ae", vim.cmd.ChatGPTEditWithInstructions, {})
      vim.keymap.set("n", "<leader>ag", vim.cmd.ChatGPTCompleteCode, {})
      require("chatgpt.config").options.openai_params.max_tokens = nil
      require("chatgpt.config").options.openai_params.temperature = nil
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim", -- optional
    }
}

