"" #############################################
"" Менеджер плагинов Vundle (Начало)
"" #############################################
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Плагин Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Плагин для маппинга
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToogle' }

" Плагин для изменения цветовой схемы
Plugin 'morhetz/gruvbox'

" Плагин PythonMode
Plugin 'python-mode/python-mode'

" Плагин Ultisnips.vim
Plugin 'SirVer/ultisnips'

" Плагин xmledit
Plugin 'sukima/xmledit'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Настройка плагина YouCompleteMe
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"
"let g:UltiSnipsListSnippets="<c-k>"

" Настройка плагина YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Настройка плагина Ultisnips.vim
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets = "<c-k>"

" Настройка плагина для маппинга scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

" Настройка плагина для изменения цветовой схемы mortetz/gruvbox
colorscheme gruvbox
set background=dark

" Настройка плагина PythonMode
"let g:pymode_options = 0

" #######################################################
" Конфигурация на основе канала YouTube - Dev Talk (Начало)
" #######################################################
syntax on           " Включить подсветку синтаксиса
:set number         " Включение нумерации строк

"set expandtab
"set tabstop=4

set hlsearch        " Подсветить результат поиска
set incsearch       " Включить инкрементальный поиск - подсвечивать первое вохождение

" #######################################################
" Настройки согласно ресурса code.djabngoproject.com
" #######################################################
" Задать ширину отступов при табуляции
autocmd FileType python set sw=4
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4

" #######################################################
" Прочие настройки
" #######################################################
" Для более умного переноса в конце строки 
set linebreak

" Дополнительный отступ перенесенной строки
set breakindent
" Настройка дополнительного отступа для переноса частей длинной строки
autocmd FileType python set breakindentopt=shift:4

" Включить переключение раскладки в режиме редактирования по комбинации Shift+Ctrl+6
set keymap=russian-jcukenwin

" Возвращение курсора в прежнее положение после открытия файла
augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

filetype on

