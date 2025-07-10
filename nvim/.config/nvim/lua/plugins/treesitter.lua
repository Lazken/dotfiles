return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "tadmccorkle/markdown.nvim" },
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { 'gdscript', 'yaml', 'markdown', 'regex', 'bash', 'markdown_inline' },
        markdown = {
          enabled = true,
        },
      })
    end
  }
}
