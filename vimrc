" нафик vi
set nocompatible

filetype on
filetype plugin on

"Настройки табов, согласно рекоммендациям PEP-8
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
set fileformat=unix

"Автоотступ
set autoindent

"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1

"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

"Настройка omnicomletion для Python (а так же для js, html и css)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

""""Дальше мои личные настройки,
""""в принципе довольно обычные, может кому надо

"Вызываем SnippletsEmu(см. дальше в топике) по ctrl-j
"вместо tab по умолчанию (на табе автокомплит)
let g:snippetsEmu_key = "<C-j>"

" Копи/паст по Ctrl+C/Ctrl+V
"vmap <C-C> "+yi
"imap <C-V> "+gPi

colorscheme wombat256
"xoria256
"wombat256 
"desert256 "Цветовая схема
syntax on "Включить подсветку синтаксиса
set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
"Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
"Вырубаем черточки на табах
set showtabline=0
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=1

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 


" Trinity
" The switch of all panels (Source Explorer, NERDtree, TagList)
nmap <F8> <Esc>:TrinityToggleAll<CR>
nmap <F9> <Esc>:TrinityToggleSourceExplorer<CR>
" nmap <F10> :TrinityToggleTagList<CR>
" nmap <F11> :TrinityToggleNERDTree<CR> 

" Buffer Explorer
nmap <F2> <Esc>:BufExplorer<CR>
vmap <F2> <Esc>:BufExplorer<CR>
imap <F2> <Esc>:BufExplorer<CR>

filetype on " enables filetype detection
filetype plugin on " enables filetype specific plugins

nnoremap y "+y
vnoremap y "+y
noremap gp "+p
