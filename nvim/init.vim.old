call plug#begin()

"****** THEMEING ******"
Plug 'overcache/NeoSolarized'
Plug 'vim-airline/vim-airline-themes'

"****** AUTOCOMPLETE ******"
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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
Plug 'gcmt/taboo.vim'
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdcommenter'
Plug 'mtth/scratch.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'troydm/zoomwintab.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

"****** CONFIGURATION *******"
filetype plugin indent on
syntax enable
colorscheme NeoSolarized
set background=light
let g:solarized_termcolors=256
let g:airline_theme='solarized'
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
set completeopt+=menuone
set completeopt+=noinsert
set completeopt+=noselect
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

let g:NERDTreeUseTCD=1
let g:NERDTreeChDirMode=3
let mapleader=" "
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:sessions_dir = '~/.vim/sessions'
let g:deoplete#enable_at_startup = 1
let g:EasyMotion_do_mapping = 0
let g:incsearch#auto_nohlsearch = 1

nnoremap ; :
nnoremap <silent> <Leader>sl :so ~/.vim/sessions/*.vim<C-D><CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> <leader>rd :redraw!<CR>
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

exec 'nnoremap <Leader>ss :mks! ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>so :so ' . g:sessions_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'
