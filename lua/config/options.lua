local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.smarttab = true
opt.wrap = true

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.foldmethod = "indent"
opt.foldenable = false
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = "0"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect,preview"
opt.laststatus = 2
opt.showmatch = true
opt.cursorline = true
opt.cursorcolumn = true
opt.wildmode = "longest,list,full"
opt.linebreak = true
opt.showbreak = "+++"
opt.ruler = true
opt.list = true

-- Behaviour
opt.hidden = true
opt.errorbells = true
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
opt.showmode = true
opt.showcmd = true
opt.autoread = true
opt.background = 'dark'
opt.guicursor = "n-v-c:block,i-ci-ve:block"
vim.api.nvim_exec([[
  augroup MyCursorShapes
    autocmd!
    autocmd InsertEnter * set guicursor=n-v-c:ver25,i-ci-ve:ver25
    autocmd InsertLeave * set guicursor=n-v-c:block,i-ci-ve:block
    autocmd VimLeave * set guicursor=n-v-c:block,i-ci-ve:block
  augroup END
]], false)
-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
