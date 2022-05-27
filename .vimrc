" 打开语法高亮
syntax on
colorscheme peachpuff
highlight Comment ctermfg=green

" ctag config
set tags=./tags,tags;$HOME

" george hotz config
set tabstop=2
set shiftwidth=2
set expandtab
set ai

" 加快上下左右访问速度
noremap J 5j
noremap K 5k
"noremap L 5l
"noremap H 5h

" 在底部显示，当前处于命令模式还是插入模式
" set showmode

" 显示键入指令
"set showcmd

" 显示中文设置
"set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" 支持使用鼠标
set mouse=a

" 开启文件类型检查
filetype indent on

" 外观
set number
"set relativenumber
"set textwidth=120
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set laststatus=2
set ruler
set wildmenu

" 光标可视化
"set cursorcolumn
set cursorline
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 缩进设置
"set autoindent
"set tabstop=2
"set shiftwidth=4
"set expandtab
"set softtabstop=2

" 搜索设置
"set showmatch
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" 编辑
" set spell spelllang=en_us
" set undofile
set autoread
set listchars=tab:»■,trail:■
set list

set nocompatible

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-scripts/indentpython.vim'
call plug#end()
