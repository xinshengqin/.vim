"This file contains settings for vim when it opens a *.py file.
"Settings that are not specified here will use default vim setting.
"*****************************************************************************************" 
"Last modified time: 12/16/2014


"enable syntax coloring and automatic indentation for Python code
syntax on

"The below text tells Vim that
"when the file is loaded, tabs are always expanded to spaces and that the
"width of each tab is four characters. 
set autoindent
set tabstop=8  
set expandtab  
set shiftwidth=4  
set softtabstop=4

set foldmethod=indent "This is only for python code.



"hit <leader>pw when our cursor is on a module and have a new window open with the whole documentation page for it.
"au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=menuone,longest,preview



