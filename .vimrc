syntax enable

let mapleader = ","
set t_ut=

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

" QuickFix
augroup quickfix
	autocmd!
	autocmd FileType qf setlocal wrap
augroup END

" Colors
" set term=xterm
" set background=dark
" set t_Co=256
colorscheme northpole
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
" autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>b :make build <Bar> copen<CR>
" Toggle coverage visualization on and off
nnoremap <leader>c :GoCoverageToggle<cr>
" Run goimports instead of gofmt
let g:go_fmt_command = "goimports"
" Use camel case when converting tags
let g:go_addtags_transform = "camelcase"
" Highlight function and method calls
let g:go_highlight_function_calls = 1
" Open godoc for entity at cursor
nnoremap <leader>d :GoDoc<cr>
nnoremap <leader>gd :GoDecls<cr>
nnoremap <leader>gdd :GoDeclsDir<cr>
nnoremap <leader>ln :lnext<cr>

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

" Flutter

" Plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Manu-sh/NeonVimColorscheme'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

call plug#end()
