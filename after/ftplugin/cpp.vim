"VIM config file for *.cpp files
"Author: Shawn Qin
 "*****************************************************************************************" 
 "Last modified time: 12/17/2014
 





" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on            " 语法高亮
endif
colorscheme ron        " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

" detect file type
filetype on
filetype plugin on
filetype plugin indent on
filetype indent on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

    
"*****************************************IMPORTANT******************************************"
" 根据usr_30中的30.5，tabstop表示一个tab所占的空格数，默认为8，建议不改，否则在别的编辑器里看你的程序代码，会很难看(例如，在VIM里，一个tab对应4个空格，到了别的软件比如gedit，一个原来的代码读出来，一个tab会对应8个空格）。因此，建议用敲4次空格来实现程序语句的缩进,或者使用ctrl D or T以及>>和<<来实现缩进。另一种方式是设置了softtabstop的宽度，它使得我们可以照常使用tab键缩进它所设定的值，而不会出现上面所述的问题
"set tabstop=4        " 设置制表符(tab键)的宽度
set softtabstop=4     " 设置软制表符的宽度    
set shiftwidth=4    " (自动) 缩进使用的4个空格
set cindent            " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
set backspace=2    " 设置退格键可用
set linebreak        " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set previewwindow    " 标识预览窗口
set history=50        " set command history to 50    "历史记录50条


"--ctags setting--
"按下F5重新生成tag文件，并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=./opt/openfoam201/src/turbulenceModels/incompressible/LES/LESModel/tags "add new tags file(刚刚生成tags的路径，在ctags -R 生成tags文件后，不要将tags移动到别的目录，否则ctrl+］时，会提示找不到源码文件)
set tags+=~/.vim/tags/c++ "C++ standard library
set tags+=/usr/include/c++/tags  "C++ standard library
"set tags+=/usr/lib/tags


"--<c-n> complete settings--"
"This is a built-in function in VIM
set complete-=i "make <c-n> not search the included head files since c++ head files can be huge
set omnifunc=ccomplete#Complete
set completeopt=menuone,menu,longest,preview " 关掉智能补全时的预览窗口
set foldmethod=syntax " 用语法高亮来定义折叠


	

