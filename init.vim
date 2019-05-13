call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mxw/vim-jsx'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
call plug#end()
set nocompatible
set vb t_vb=
set hlsearch
set number
set ruler
set noshowmode
filetype on
filetype plugin on
filetype indent on
syntax on
set sidescroll=6
set hidden
set confirm
set autowriteall
set wildmenu wildmode=full
set splitright
set splitbelow
set guioptions-=r
let mapleader=";"
inoremap jj <Esc>
" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>

" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>

" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
nnoremap <silent> <leader>bk :bd!<CR>
" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
set backupdir=$HOME/.nvim-temp//
set directory=$HOME/.nvim-temp//
set undodir=$HOME/.nvim-temp//
map ' :
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
map <C-b> :NERDTreeToggle<CR>
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:javascript_plugin_jsdoc = 1
set ts=8
set shiftwidth=8
set ai sw=8
colorscheme leo
set cursorline
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_fix_on_save = 1
