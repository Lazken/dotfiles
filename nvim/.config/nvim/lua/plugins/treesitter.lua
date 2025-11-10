return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        sync_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { 'gdscript', 'yaml', 'markdown', 'regex', 'bash', 'python', 'helm' },
      })
    end
  }
}
