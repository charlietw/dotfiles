syntax enable " enable syntax highlighting
set expandtab " tabs are spaces
set number " show line numbers
set tabstop=4 " visual spaces per tab
set softtabstop=4 " number of spaces in tab when in edit mode
set backspace=indent,eol,start " allow backspace to remove everything

call plug#begin('~/.vim/plugged') 
Plug 'davidhalter/jedi-vim' "auto completion
Plug 'sjl/badwolf' "colour scheme
Plug 'ervandew/supertab' " tab autocomplete
call plug#end() " no plugins after this line

colorscheme badwolf
