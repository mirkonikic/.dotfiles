-- Required files
require('plugins')
require('settings')
require('keybinds')
require('autocmd')

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
