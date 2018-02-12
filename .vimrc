syntax enable

" General
set encoding=utf-8
filetype plugin indent on

" Formatting
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Navigation

" Search
set smartcase
set ignorecase
set hlsearch

" Editor
set relativenumber
set colorcolumn=80
set ruler
set cursorline
set nowrap

" Colors
" set term=xterm
" set background=dark
" set t_Co=256
colorscheme northpole
let g:airline_theme = 'northpole'
" Ignored in Neovim 0.1.5 and above
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Go Vim

" Write file before running commands
set autowrite
" run :GoBuild or :GoTestCompile based on the type of file
function! s:build_go_files()
	let l:file = expand('%')
	if l:file =~# '^\f\+_test\.go$'
		call go#test#Test(0, 1)
	elseif l:file =~# '^\f+\.go$'
		call go#cmd#Build(0)
	endif
endfunction
" Run our smart build command
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
" Toggle coverage visualization on and off
nnoremap <leader>c :GoCoverageToggle<cr>
" Run goimports instead of gofmt
let g:go_fmt_command = "goimports"
" Use camel case when converting tags
let g:go_addtags_transform = "camelcase"

" Highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1

" UltiSnips

let g:UltiSnipsExpandTrigger="<tab>"

" NERDTree

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
	\ "Modified" : "M",
	\ "Staged"   : "+",
	\ "Untracked": "U",
	\ "Renamed"  : "M",
	\ "Deleted"  : "D",
	\ "Dirty"    : "*"
\ }

" Shortcuts
let mapleader = ","
inoremap jj <ESC>
" Clear search highlights
nnoremap <leader><space> :noh<cr>
" Might not be needed with govim
nnoremap <leader>t :GoTest<cr>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Edit or view files in the same directory as current
cnoremap %% <C-R>=expand('%:h').'/'<cr>
" Move between errors in quick fix
nnoremap <leader>n :cnext<cr>
nnoremap <leader>p :cprevious<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" function! RunFile()
"   if &ft == "go"
"     write
"     !go run %
"   elseif &ft == "python"
"     write
"     !python %
"   endif
" endfunction
" 
" set nocompatible
" set modelines=0
" set scrolloff=3
" set autoindent
" set showmode
" set showcmd
" set hidden
" set wildmenu
" set wildmode=list:longest
" set visualbell
" set ttyfast
" set backspace=indent,eol,start
" set laststatus=2
" set undofile
" " nnoremap / /\v
" " vnoremap / /\v
" set gdefault
" set incsearch
" set showmatch
" nnoremap <tab> %
" vnoremap <tab> %
" "nnoremap <leader>r :!python %<cr>
" set wrap
" set textwidth=79
" set formatoptions=qrn1
" inoremap <F1> <ESC>
" nnoremap <F1> <ESC>
" vnoremap <F1> <ESC>
" au FocusLost * :wa
" nnoremap <leader>ft Vatzf
" 
" autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
" autocmd! BufNewFile,BufRead *.go setlocal ft=go
" 
" nnoremap <leader>r :call RunFile()<cr>
" 
" " Open files with <leader>f
" map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
" " Open files limited to current directory
" map <leader>gf :CommandTFlush\|:CommandT %%<cr>
" 
" 
" map <leader>o Go
" 
" " Make current window big, leave others some context
" set winwidth=84
" set winheight=10
" set winminheight=10
" set winheight=999
" 
" 
" map <leader>h :wincmd h<CR>
" map <leader>j :wincmd j<CR>
" map <leader>k :wincmd k<CR>
" map <leader>l :wincmd l<CR>
" 
" iab breka break
