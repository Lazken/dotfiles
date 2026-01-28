return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.config")
      config.setup({
        auto_install = true,
        sync_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { 'terraform', 'hcl', 'gdscript', 'yaml', 'markdown', 'regex', 'bash', 'python', 'helm' },
      })
    end
  }
}
