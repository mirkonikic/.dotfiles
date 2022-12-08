
local opt = vim.opt

vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
-- pcall(vim.cmd, 'colorscheme onedark')
vim.cmd [[colorscheme nightfly]]

opt.relativenumber = true
opt.backup = false
opt.cursorline = true
opt.expandtab = true
opt.hidden = true
opt.hlsearch = true
opt.incsearch = true
opt.number = true
opt.path:append '**'
opt.scrolloff = 5
opt.shiftwidth = 4
opt.smartcase = true
opt.smartindent = false
opt.softtabstop = 4
opt.swapfile = false
opt.tabstop = 4
opt.textwidth = 80
opt.wildmenu = true
opt.wrap = true
opt.writebackup = false
