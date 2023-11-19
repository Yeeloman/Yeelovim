local keymap = vim.keymap
local opts = {}
-- source init file
keymap.set('n', '<F2>', ':source ~/.config/nvim/init.lua<CR>', opts)

-- to navigate in insert mode using ctr hjkl
keymap.set('i', '<C-h>', '<C-o>h', opts)
keymap.set('i', '<C-l>', '<C-o>l', opts)
keymap.set('i', '<C-j>', '<C-o>j', opts)
keymap.set('i', '<C-k>', '<C-o>k', opts)

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

-- buffer picker
keymap.set('n', '<leader>bp', ':BufferPick<CR>')
