local function map(m,k,v)
	vim.keymap.set(m,k,v,{silent=true})
end

-- map(MODE,KEY,VALUE)
-- MODE -> 'n':normal | 'i':insert
-- KEY -> character
-- VALUE -> what is real value
map('n', '<C-i>', ':TermExec cmd=lazygit direction=float<CR>')
map('n', '<C-u>', ':ToggleTerm direction=float<CR>')
map('n', '<C-j>', ':ToggleTerm direction=horizontal<CR>')
map('n', '<C-k>', ':TodoTelescope<CR>')
