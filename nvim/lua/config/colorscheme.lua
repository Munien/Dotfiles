local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

cmd 'colorscheme gruvbox-material'
cmd 'filetype plugin indent on'
cmd 'set guifont=Hack\\ Nerd\\ Font:h17'

vim.api.nvim_set_var('neovide_transparency', 0.9)

utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'laststatus', 2)
utils.opt('o', 'encoding', 'UTF-8')
utils.opt('o', 'autoindent', true)
utils.opt('o', 'autoread', true)
utils.opt('o', 'backupcopy', 'yes')
utils.opt('o', 'breakindent', true)
utils.opt('o', 'linespace', 2)
utils.opt('o', 'cursorline', true)
utils.opt('o', 'expandtab', true)
utils.opt('o', 'exrc', true)
utils.opt('o', 'hlsearch', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'incsearch', true)
utils.opt('o', 'lazyredraw', true)
utils.opt('o', 'ttyfast', true)
utils.opt('o', 'linebreak', true)
utils.opt('o', 'list', true)
utils.opt('o', 'listchars', 'tab:>.,trail:.,extends:#,nbsp:.')
utils.opt('o', 'number', true)
utils.opt('o', 'scrolloff', 6)
utils.opt('o', 'secure', true)
utils.opt('o', 'shiftwidth', 2)
utils.opt('o', 'showcmd', true)
utils.opt('o', 'showmatch', true)
utils.opt('o', 'smartindent', true)
utils.opt('o', 'smarttab', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'tabstop', 2)
utils.opt('o', 'ttimeout', true)
utils.opt('o', 'ttimeoutlen', 100)
utils.opt('o', 'wildmenu', true)
utils.opt('o', 'wrap', true)
utils.opt('o', 'wrap', true)
utils.opt('o', 'undofile', true)
utils.opt('o', 'hidden', true)
utils.opt('o', 'history', 1000)
utils.opt('o', 'undolevels', 1000)
utils.opt('o', 'wildignore', '*.swp,*.bak,*.pyc,*.class')
utils.opt('o', 'visualbell', true)

-- From settings

utils.opt('o', 'completeopt', 'menuone,noselect')
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'shiftround', true)

vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = true}'

