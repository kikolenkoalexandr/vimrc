"Установить VIM-PLUG если он еще не установлен
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

"Искать плагины в этой директории
call plug#begin('~/.vim/bundle')
    Plug 'ErichDonGubler/vim-sublime-monokai'
"    Plug 'Valloric/YouCompleteMe'
    Plug 'neomake/neomake'
    Plug 'davidhalter/jedi-vim', {'for': 'python'}
call plug#end()

"Настроить плагины
colorscheme sublimemonokai	"Задать цветовую схему sublimemonokai

"Настройка русского языка
set keymap=russian-jcukenmac	"Включить русскую раскладку, переключение по сочетанию клавишь Ctrl+^
set iminsert=0			"Язык ввода при старте Вима - Английский
set imsearch=0			"Аналогично настраивается режим поиска


