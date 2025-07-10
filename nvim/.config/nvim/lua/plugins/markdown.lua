return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    lazy = false,
    opts = {},
    keys = {
      { "<leader>mr", function() require("render-markdown").toggle() end, desc = "Render Markdown Toggle", },
      { "<leader>tt","0i- [ ] <esc>j", desc = "make line todo list", },
    },
}
