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
          deepseek = function()
            return require("codecompanion.adapters").extend("ollama", {
              name = "deepseek", -- Give this adapter a different name to differentiate it from the default ollama adapter
              schema = {
                model = {
                  default = "deepseek-r1",
                },
                num_ctx = {
                  default = 4096,
                },
                num_predict = {
                  default = -1,
                },
              },
            })
          end,
        },
        strategies = {
          chat = {
            adapter = "deepseek",
          },
          inline = {
            adapter = "deepseek",
          },
          agent = {
            adapter = "deepseek",
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
