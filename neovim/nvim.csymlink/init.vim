" Basic options ----------------------------------------------------------- {{{


" }}}
" Plug {{{

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" }}}
" Color scheme {{{

syntax on
set termguicolors
" }}}
