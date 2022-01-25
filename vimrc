set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
	
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" " Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" " Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
"
" " NERDTREE Plugins
"插入模式下的映射
inoremap jj <Esc>
"普通模式下的映射
"noremap m h
"autocmd VimEnter * NERDTree

"设置可以使用鼠标
"set mouse=a
"防止有时加载不了color的设置
let &t_ut=''


"设置缩进
set tabstop=4 "设置缩进
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"设置行号
set number
set encoding=UTF-8

"Neadtree配置"
" 关闭NERDTree快捷键
map tt :NERDTreeToggle<CR>
" " 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" " 是否显示隐藏文件
let NERDTreeShowHidden=1
" " 设置宽度
let NERDTreeWinSize=31
" " 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" " 忽略一下文件的显示
" let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" " 显示书签列表
let NERDTreeShowBookmarks=1

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }




"uCompleteMe:语句补全插件
set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0                            " 关闭加载.ycm_extra_conf.py提示
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
" 回车即选中当前项
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" 
" 跳转到定义处
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>     
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项




call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>

map Q : q<CR>
map S : w<CR>
map R : source $MYVIMRC<CR>

"分屏切换 <leader> => \ 可通过let mapleader 改变其映射
"<C-W> => ctrl + w
map <leader>] <C-w>l
map <leader>[ <C-w>h
map <leader>' <C-w>k
map <leader>; <C-w>j

"分屏大小增加
map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>

"自动补全括号"
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"编辑模式下移动光标的映射"
inoremap <C-o> <Esc>o
inoremap <C-l> <Right>
"可能会导致Backspace键出问题"
inoremap <C-h> <Left> 
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-b> <PageUp>
inoremap <C-f> <PageDown>

inoremap <C-d> <Delete>

noremap H J
noremap J 5j
noremap K 5k

"模板设置
let g:enable_template=2 "启用模板数量
let g:template_dir = "~/.vim/template"
autocmd BufNewFile *.html 0r ~/.vim/template/HTML.html
autocmd BufNewFile *.php 0r ~/.vim/template/PHP.php
