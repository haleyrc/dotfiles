function! RunFile()
  if &ft == "go"
    write
    !go run %
  elseif &ft == "python"
    write
    !python %
  endif
endfunction

call pathogen#infect()
set nocompatible
filetype plugin indent on
syntax enable
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
let mapleader = ","
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
"nnoremap <leader>r :!python %<cr>
nnoremap <leader>t <Esc>:w<cr>:!go test<cr>
inoremap jj <ESC>
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
au FocusLost * :wa
nnoremap <leader>ft Vatzf
set t_Co=256
colorscheme molokai

autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.go setlocal ft=go

nnoremap <leader>r :call RunFile()<cr>

" Open files with <leader>f
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
" Open files limited to current directory
map <leader>gf :CommandTFlush\|:CommandT %%<cr>

" Edit or view files in the same directory as current
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

map <leader>o Go

" Make current window big, leave others some context
set winwidth=84
set winheight=10
set winminheight=10
set winheight=999

" Switch between the last two files
nnoremap <leader><leader> <c-^>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

iab breka break
