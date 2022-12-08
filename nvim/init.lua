-- Required files
--
require('plugins')
require('settings')
require('keybinds')
require('autocmd')
require('feline').setup()
require('lsp-zero')
local lsp = require('lsp-zero')
-- require("tree-sitter")

lsp.preset('recommended')
lsp.setup()
