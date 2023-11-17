local keymap = vim.keymap

-- source init file
keymap.set('n', '<F2>', ':source ~/.config/nvim/init.lua<CR>', opts)

-- set a keymap for lazy
keymap.set('n', '<Leader>l', ':Lazy<CR>', { noremap = true, silent = true })

-- pane nav
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)

-- vertical and horizontal split
keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)
keymap.set('n', '<leader>sh', ':split<CR>', opts)

-- save the file using Ctr-s
keymap.set('n', '<C-s>', ':w<CR>', opts)

keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- buffer manipulation
keymap.set('n', '<leader>bd', ':bdelete<CR>')
keymap.set('n', '<leader>bD', ':bdelete!<CR>')

-- open a new file
keymap.set('n', '<leader>bn', ':enew<CR>')
