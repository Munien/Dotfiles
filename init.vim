call plug#begin()

"****** THEMEING ******"
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes'

"****** AUTOCOMPLETE ******"
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
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
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdcommenter'

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
set ignorecase
set smartcase
set incsearch
set lazyredraw
set linebreak
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
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
set tabstop=2
set textwidth=0
set ttimeout
set ttimeoutlen=100
set wildmenu
set wrap
set clipboard+=unnamed
set undodir=~/.vim/undodir
set undofile
set hidden
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell           " don't beep
set noerrorbells         " don't beep"
set nobackup
set noswapfile

autocmd filetype html,xml set listchars-=tab:>.

let mapleader=" "
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:sessions_dir = '~/.vim/sessions'

nnoremap ; :
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>. :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
nnoremap <silent> <Leader>.f :Files<CR>
nnoremap <silent> <Leader>.fc :Files %:p:h<CR>
nnoremap <silent> <Leader>sl :so ~/.vim/sessions/*.vim<C-D><CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> <leader>rd :redraw!<CR>

exec 'nnoremap <Leader>ss :mks! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>so :so ' . g:sessions_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'
