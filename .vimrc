if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Plugins will be downloaded under the specified directory.
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Plug 'junegunn/seoul256.vim'
Plug 'jiangmiao/auto-pairs' 
Plug 'matze/vim-move'
Plug 'vim-airline/vim-airline'

" advanced search 
Plug 'mileszs/ack.vim'
" Auto complete on steroids
" Plug 'zxqfl/tabnine-vim'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Plugins for javascript
" Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'dense-analysis/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Unified color scheme (default: dark)
colo seoul256

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
" au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" ALE plugin
let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier']
\}
let g:ale_fix_on_save = 1

" Ack plugin 
let g:ackprg = 'ag --vimgrep'

" Перегружаем для вызова форматирования для файла
nnoremap <F5> mzgggqG`z


" Move plugin
" <C-k>   Move current line/selections up
" <C-j>   Move current line/selections down
let g:move_key_modifier = 'C'


" Для работы с табами, вместо пробелов, присвойте tabstop и shiftwidth одинаковые значения
set tabstop=4
set shiftwidth=4
set softtabstop=4


" автоматически обновлять файл при его изменении
set autoread

" настраиваем отступы
set autoindent
set smartindent

" показывать относительные номера строк. Удобно тем, что можно легко переходить к нужной строке командой 10j, например
set rnu

" всегда показывать строку статуса
set laststatus=2

" Время, которое vim ждет для ввода следующего символа комбинации клавиш.
" Например, если в vim'e существует комбинация "df", то после ввода символа "d" у вас есть пол секунды,
" чтобы ввести "f", иначе в буфер вставиться символ "d".
set timeoutlen=500

" эту команду я плохо понимаю. В документации написано, что это время ожидания для ввода последовательностей клавиш,
" в таком случае, я не знаю в чем отличие от предыдущей команды. Тем не менее, когда ожидание равно нулю, то при нажатии <Esc>
" для выхода из визуального режима или закрытия всплывающего меню, нет никакой заминки, что весьма приятно.
set ttimeoutlen=0

" Поддержка русского языка - более удобная работа с кириллицей. При нажатии <C-6> в режиме вставки, vim изменит режим с "Insert" на "Insert (lang)",
" после чего будут вводиться русские символы. Если вернуться в нормальный режим, то все команды будут работать.
set keymap=russian-jcukenwin
set iminsert=0 " Чтобы при старте ввод был на английском, а не русском (start > i)
set imsearch=0 " Чтобы при старте поиск был на английском, а не русском (start > /)

" Выставляем кодировку
set encoding=utf-8
set termencoding=utf-8

" Дополнительно можно добавить:
inoremap <C-l> <C-^> " Чтобы вместо Ctrl-^ нажимать Ctrl-L
highlight lCursor guifg=NONE guibg=Cyan " Смена цвета курсора
