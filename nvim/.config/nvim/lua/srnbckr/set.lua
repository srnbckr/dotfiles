-- give me a fat cursor
vim.opt.guicursor = ""

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs and indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- no line wraps
vim.opt.wrap = false

-- make no backup but keep undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search highlighting settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- set terminal colors
vim.opt.termguicolors = true

-- scroll settings
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- create vertical indicator for line length
vim.opt.colorcolumn = "80"
