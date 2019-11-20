" Basic options ----------------------------------------------------------- {{{

" 2 spaces for tabs, the one true way
set tabstop=2
set shiftwidth=2
set expandtab

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
