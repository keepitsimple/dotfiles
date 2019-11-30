" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" Plugins for javascript
" Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
