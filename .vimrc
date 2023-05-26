set nocompatible			"vim比vi支持更多的功能，如showcmd，避免冲突和副作用，最好关闭兼容 
set encoding=utf-8	  		"使用utf-8编码 
set number                	"显示行号 
set showcmd               	"显示输入命令 
set cursorline          	"显示当前行 
set hlsearch              	"显示高亮搜索 
set tabstop=4				"tab等于4空格
set scrolloff=10 			"在上下移动光标时，光标的上方或下方至少会保留显示的行数
set mouse=a					"开启光标，鼠标可以点击, 或者选中

set ambiwidth=single
" Airline
let g:airline_theme='papercolor'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_powerline_fonts=1



" 主题配置
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu


"====== vundle configuration ======
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Plugin
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'preservim/nerdcommenter'
"Plugin 'majutsushi/tagbar'
"Plugin 'itchyny/lightline.vim'
"Plugin 'luochen1990/rainbow'

call vundle#end()
filetype plugin indent on   " requeired


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通过F2键来开启和关闭NERDTree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" 启动vim时自动打开NERDTree，并将光标放在Tree的Tag
"autocmd VimEnter * NERDTree

" 启动vim时自动打开NERDTree，并将光标放在vim打开的文件
"autocmd VimEnter * NERDTree | wincmd p

" 如果退出vim后只剩Tree的Tag的话，则自动退出Tree的Tag
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

