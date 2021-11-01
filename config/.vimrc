"~/.vimrc

let mapleader=" "

noremap <C-h> 3h
noremap <C-j> 3j
noremap <C-k> 3k
noremap <C-l> 3l

nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>w :w<CR> " 保存 失效
nnoremap <Leader><BS> :set hls!<CR> " Leader+BS 高亮开关
nnoremap <Leader>n :set number!<CR> " 行号

inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <right>

"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l

xnoremap <silent> <Leader>y "+y
nnoremap <silent> <Leader>p "+p
xnoremap <silent> <Leader>y "+y
xnoremap <silent> <Leader>P "+P

" 基础配置
set hls " 搜索高亮
set incsearch " 模式搜索实时预览,增量搜索
set showmode " 显示当前模式
set number " 打开行号
" set relativenumber " 打开相对行号
" set nocompatible " 关闭兼容vi

syntax enable " 开启语法高亮功能
syntax on " 允许用指定语法高亮配色方案替换默认方案
" set foldmethod=indent" 基于缩进或语法进行代码折叠
" set foldmethod=syntax

set ignorecase " 忽略大小写 (该命令配合smartcase使用较好，否则不要开启)
set smartcase " 模式查找时智能忽略大小写
set wildmenu  " vim自身命令行模式智能补全
"set laststatus=2 " 总是显示状态栏
set ruler " 显示光标当前位置
"set cursorline " 高亮显示当前行/列
"set cursorcolumn
"set nowrap " 禁止折行 取消换行

"set clipborad=unamed " 共享系统粘贴板

" 取消备份
set nobackup
set noswapfile

"setencoding=utf-8 " 文件编码
language en_US.UTF-8

" 设置缩进
" set cindent
" set tabstop=2
" set shiftwidth=2

" ideavim action
nnoremap <Leader>f :action ReformatCode<CR> " 格式化代码

" 主题
set background=dark
"colorscheme solarized
