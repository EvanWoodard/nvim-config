vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>hs', vim.cmd.split)
vim.keymap.set('n', '<leader>vs', vim.cmd.vsplit)

vim.keymap.set('n', '<leader>vrl', ':vertical resize +10<CR>')
vim.keymap.set('n', '<leader>vrh', ':vertical resize -10<CR>')

vim.keymap.set('n', '<leader>wj', function() vim.cmd.wincmd('j') end)
vim.keymap.set('n', '<leader>wk', function() vim.cmd.wincmd('k') end)
vim.keymap.set('n', '<leader>wh', function() vim.cmd.wincmd('h') end)
vim.keymap.set('n', '<leader>wl', function() vim.cmd.wincmd('l') end)
vim.keymap.set('n', '<leader>e', function() vim.diagnostic.open_float() end)

vim.keymap.set('i', 'jj', '<Esc>')

local function animate(type)
	require('cellular-automaton').start_animation(type)
end

vim.keymap.set('n', '<leader>fml', function() animate('make_it_rain') end)

