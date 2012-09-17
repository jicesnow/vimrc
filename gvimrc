set nocompatible  
"设置 vim 为不兼容vi模式
filetype off      
"必须的
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
"让 Vundle 管理 Vundle
"必须的
Bundle 'gmarik/vundle'
 
" 不同代码源上的vim插件的安装和管理方法
"
" 代码源在github上的
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" 代码源在vim-scripts上的
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" 代码源放在其他地方的
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'honza/snipmate-snippets'
Bundle 'mattn/zencoding-vim'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'

"-------------
" Other Utils
" ------------
Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
Bundle 'beyondwords/vim-jinja2'
Bundle 'digitaltoad/vim-jade'

" web front end
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'
"
" markup language
Bundle 'tpope/vim-markdown'

" Ruby
"Bundle 'tpope/vim-endwise'

" Scheme
"Bundle 'kien/rainbow_parentheses.vim'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'

" ----------------------------------------------------------------------

filetype plugin indent on     " 必须的
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..filetype off
" ----------------------------------------------------------------------

set modelines=0
"不使用modelines
set number
"显示行号
set background=dark
"设置背景为深色
syntax on
"语法高亮
set tabstop=4
"设置tap键为4个空格
set shiftwidth=4
"设置当行之间交错时使用4个空格， << 和 >> 命令移动时的宽度为 4
set softtabstop=4
"使得按退格键时可以一次删掉 4 个空格
set expandtab
"设置缩进长度
set showmatch
"设置匹配模式 显示括号对应
set ruler
"打开状态栏标尺
set incsearch
"实时显示搜索结果
set scrolloff=3
"当光标与顶部距离为三行时发生翻滚，且翻滚后光标与底部相距三行
set autoindent
"自动对齐方式
set smartindent
"智能对齐方式
set showmode
"显示当前模式
set showcmd
"在窗口右下角显示完整命令已输入部分
set hidden
"允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set wildmenu
"启用文本模式的菜单
set wildmode=list:longest
"增强模式打开列表
set visualbell
"可视化铃声
set cursorline
"高亮光标所在行
set ttyfast
"设置快速终端
set backspace=indent,eol,start
"设置backspace的工作方式 不兼容vi
set laststatus=2
"总是显示状态栏
set relativenumber
"显示相对行号，而不是绝对行号
set undofile
"编辑一个文件的时候要创建<FILENAME>.un~文件,以便撤销，即使是关闭重开文件
set encoding=utf-8
"选择编码
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
"避免windows下gvim菜单和系统提示乱码
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"自动识别编码，正确显示中文
set guifont=Microsoft\ YaHei\ Mono:h14
"设置双字节字体
set linespace=2
"设置行高
color molokai
"设置颜色主题
"set lines=50 columns=128
"设置macvim窗口大小
autocmd! bufwritepost .vimrc source ~/.vimrc
"定义了一个自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc文件

"屏蔽箭头键使用
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"调用zencoding-vim插件
let g:use_zen_complete_tag = 1

"Markdown language syntax settings
  augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
  augroup END

"NERD Tree插件
let NERDChristmasTree=1 "让nerdtree漂亮点
let NERDTreeBookmarksFile='~\.vim\Data\NerdBookmarks' "指定书签文件
let NERDTreeMouseMode=2 "单击打开目录 双击打开文件
let NERDTreeShowBookmarks=1 "默认显示书签列表
let NERDTreeShowFiles=1  "默认显示文件
let NERDTreeShowHidden=0  "默认不显示隐藏文件，1为显示
let NERDTreeShowLineNumbers=1  "默认显示行号
let NERDTreeWinPos='left'  "窗口位置
let NERDTreeWinSize=25   "窗口宽
nnoremap <silent><leader>nn :NERDTreeToggle<CR>
"映射\nn为NERDTreeToggle快捷键，普通模式下文件窗口有效

"neocomplacache插件
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_manual_completion_start_length=3
let g:neocomplcache_enable_ignore_case=1
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'
let g:neocomplcache_max_list=100
let g:neocomplcache_enable_auto_select = 1
imap <expr><c-y> neocomplcache#close_popup()
imap <expr><C-e> neocomplcache#cancel_popup()

