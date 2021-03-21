" -------------------------------
"           True colors
" -------------------------------
" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

au FocusLost * :wa
" -------------------------------

set spell spelllang=en_us

set nowrap
set signcolumn=yes
set colorcolumn=85
set relativenumber 

set hidden
set encoding=utf8

syntax on
set cmdheight=2
set updatetime=300

set noswapfile
set nobackup
set nowritebackup
set undodir=~./vim/undodir
set undofile

set scrolloff=8

" Tab behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4 
set expandtab 
set autoindent 

" Search behavior
set incsearch 
set ignorecase
set smartcase
set hlsearch

inoremap jk <ESC>
let mapleader = ","

" Autocorrect word under cursor  
nnoremap <leader>f 1z=

nnoremap <leader>n :NERDTreeFocus<CR>
map <C-b> :NERDTreeToggle
" -------------------------------
" Install Pluginmanager and load Plugins 
" -------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -client ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" -------------------------------

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '~/.fzf'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Raimondi/delimitMate'
Plug 'mboughaba/i3config.vim'

call plug#end()

" -------------------------------
"           NERDTree
" -------------------------------
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Mirror Nerdtree on all tabs
autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeShowHidden=1

" -------------------------------
"           COC
" -------------------------------
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" <CR>: confirm completion, or insert <CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" -------------------------------

colorscheme dracula

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_wq = 0

let g:mkdp_open_to_the_world = 1
let g:mkdp_auto_start = 1
