local function map(m,k,v)
	vim.keymap.set(m,k,v,{silent=true})
end

-- map(MODE,KEY,VALUE)
-- MODE -> 'n':normal | 'i':insert
-- KEY -> character
-- VALUE -> what is real value
