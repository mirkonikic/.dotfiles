local opt = vim.opt

vim.cmd [[
  colorscheme tokyonight-night
]]

-- vim.opt.signcolumn = 'yes'
-- vim.opt.termguicolors = true
-- pcall(vim.cmd, 'colorscheme onedark')
-- vim.cmd [[colorscheme nightfly]]

vim.cmd("ownsyntax off")
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
opt.shiftwidth = 2
opt.smartcase = true
opt.smartindent = false
opt.softtabstop = 2
opt.swapfile = false
opt.tabstop = 2
opt.textwidth = 240
opt.wildmenu = true
opt.wrap = true
opt.writebackup = false
