return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("codecompanion").setup({
        adapters = {
             openai = function()
              return require("codecompanion.adapters").extend("openai", {
                env = {
                  api_key = "cmd: cat ~/openaikey",
                },
              })
            end,
        },
        strategies = {
          chat = {
            adapter = "openai",
          },
          inline = {
            adapter = "openai",
          },
          agent = {
            adapter = "openai",
          },
        },
        display = {
          chat = {
            window = {
              layout = "vertical", -- float|vertical|horizontal|buffer
            },
          },
        },
        opts = {
          ---@param adapter CodeCompanion.Adapter
          ---@return string
          system_prompt = function(adapter)
            return "My default system prompt"
          end,
        },
      })
      vim.keymap.set('n', '<leader>a', ':CodeCompanionChat Toggle<CR>')
    end,
    init = function() end,
  },
}
