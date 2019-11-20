" Basic options ----------------------------------------------------------- {{{

" 2 spaces for tabs, the one true way
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable cursor keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" }}}
" Shortcuts -------------------------------------------------------------- {{{

" Leader key
let mapleader = ","

" Clear search highlights
nnoremap <leader><space> :noh<cr>

" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Hard wrap paragraphs of text
nnoremap <leader>q gqip

" Quickly open init.vim
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Open new split and focus it

nnoremap <leader>w <C-w>v<C-w>l

" Use Ctrl + h/j/k/l to navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}
" Plug {{{

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" }}}
" Color scheme {{{

syntax on
set termguicolors
" }}}
