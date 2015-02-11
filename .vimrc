"enable syntax processing
syntax enable

"tabs are spaces
set expandtab

"number of visual spaces per TAB
set tabstop=4

"number of spaces in tab when editing
set softtabstop=4

"number of spaces added by >> command
set shiftwidth=4

"make necessary indents
set smartindent

"show line numbers
set number

"visual autocomplete for command menu
set wildmenu

"save on F2
map <F2> :w<CR>

"compile on F3
autocmd FileType java map <F3> :!javac -d classes % 2> errors.err<CR>:cf<CR>
autocmd FileType cpp map <F3> :!g++ -std=c++11 % -o %:r 2> errors.err<CR>:cf<CR>

"run on F4
autocmd FileType java map <F4> :!java -cp classes %:r<CR>
autocmd FileType cpp map <F4> :!./%:r<CR>
autocmd FileType python map <F4> :!python3 %<CR>

"errors browsing
map <F7> :cp<CR>
map <F8> :cc<CR>
map <F9> :cn<CR>
