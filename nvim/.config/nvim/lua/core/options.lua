
-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentiaton
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- UI
vim.opt.background = "light"
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.statusline = "%f"

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- diagnostics
vim.diagnostic.enable = false
vim.diagnostic.config({
  virtual_lines = true,
})
