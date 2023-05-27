set nocompatible			" vim比vi支持更多的功能，如showcmd，避免冲突和副作用，最好关闭兼容 
set encoding=utf-8	  		" 使用utf-8编码 
set number                	" 显示行号 
set showcmd               	" 显示输入命令 
set cursorline          	" 显示当前行 
set hlsearch              	" 显示高亮搜索 
set tabstop=4				" tab等于4空格
set scrolloff=10 			" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set mouse=a					" 开启光标，鼠标可以点击, 或者选中
syntax enable            	" 开启语法高亮功能
syntax on					" 语法高亮
set noerrorbells			" 关闭错误信息响铃
set novisualbell 			" 关闭使用可视响铃代替呼叫
set smartindent 			" 开启新行时使用智能自动缩进
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set laststatus=2         	" 总是显示状态栏
"set list lcs=tab:¦\      	" 设置默认开启对齐线

nnoremap H ^
nnoremap L $
" 插入模式下的移动
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>
imap <c-h> <left>

" 编码设置
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 自带的代码补全
set wildmenu                             " vim自身命名行模式智能补全
set completeopt=menuone,preview,noselect " 补全时不显示窗口，只显示补全列表
set omnifunc=syntaxcomplete#Complete     " 设置全能补全
set shortmess+=c                         " 设置补全静默
set cpt+=kspell                          " 设置补全单词

" 自动打开上次位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

