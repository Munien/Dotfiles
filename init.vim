call plug#begin()

"****** THEMEING ******"
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes'

"****** AUTOCOMPLETE ******"
Plug 'ycm-core/YouCompleteMe'
Plug '/usr/local/opt/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'

"****** ETC ******"
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'thaerkh/vim-workspace'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

"****** CONFIGURATION *******"
filetype plugin indent on
syntax enable
set background=dark
colorscheme palenight
let g:airline_theme='palenight'
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
set spell spelllang=en_au
set termguicolors
set laststatus=2
set noshowmode
set encoding=utf-8
set autoindent
set autoread
set backupcopy=yes
set breakindent
set cursorline
set expandtab
set exrc
set hlsearch
set ignorecase smartcase
set incsearch
set lazyredraw
set linebreak
set list
set number
set scrolloff=6
set secure
set shiftwidth=2
set showcmd
set showmatch
set smartindent
set smarttab
set splitbelow
set splitright
set tabstop=3
set textwidth=0
set ttimeout
set ttimeoutlen=100
set wildmenu
set wrap
set clipboard+=unnamed
set undodir=~/.vim/undodir
set undofile
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

let mapleader=" "
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"

nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

