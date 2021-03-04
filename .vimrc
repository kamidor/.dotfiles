syntax on
set nowrap
set encoding=utf8

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

" Line number
set number

" No tabs
set et 

" If tab, insert x spaces 
set ts=4   
    
" Ident / unident width
set sw=4 

" Alligns idents vertically
set ai 

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Runs ident.vim script at startup
runtime! indent.vim

" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -client ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Loads Plugins
call plug#begin('~/.vim/plugged')
" -------------------------------
Plug 'godlygeek/tabular'

"
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
let g:mkdp_open_to_the_world = 1

" File explorer 
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
autocmd BufWinEnter * silent NERDTreeMirror
nnoremap <C-f> :NERDTreeFind<CR>
map <C-b> :NERDTreeToggle
nnoremap <C-n> :NERDTreeFocus<CR>

" Status bar
Plug 'bling/vim-airline'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Syntax Checkecker
Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_wq = 0

" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '~/.fzf'

" i3 Syntax
Plug 'mboughaba/i3config.vim'

" Close Brackets etc.
Plug 'Raimondi/delimitMate'

" Markdown Syntax
Plug 'plasticboy/vim-markdown'

Plug 'neomake/neomake' 

" -------------------------------
call plug#end()

call neomake#configure#automake('rw', 1000)
