colorscheme desert

" lines longer than 80 columns will be broken
set textwidth=80

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

" round indent to multiple of 'shiftwidth'
set shiftround

"make necessary indents
set smartindent

"show line numbers
set number

"visual autocomplete for command menu
set wildmenu

"save on F2
map <F2> :w<CR>

"compile on F3
autocmd FileType cpp :set makeprg=g++\ -std=c++14\ %\ -o\ %:r
autocmd FileType python :set makeprg=flake8\ %
map <F3> :silent make\|cw\|redraw!<CR>

"run on F4
autocmd FileType cpp map <F4> :!./%:r<CR>
autocmd FileType python map <F4> :!python %<CR>

"bash on F5
map <F5> :sh<CR>
