
set t_Co=256
"主题"
colorscheme ron


syntax enable

"语法高亮"
syntax on


"--fold setting--
" manual 手工定义折叠
" indent 更多的缩进表示更高级别的折叠
" expr 用表达式来定义折叠
" syntax 用语法高亮来定义折叠
" diff 对没有更改的文本进行折叠
" marker 对文中的标志折叠
" 常用命令
" za  打开/关闭在光标下的折叠
" zA  循环地打开/关闭光标下的折叠
" zo  打开 (open) 在光标下的折叠
" zO  循环打开 (Open) 光标下的折叠
" zc  关闭 (close) 在光标下的折叠
" zC  循环关闭 (Close) 在光标下的所有折叠
" zM  关闭所有折叠
" zR  打开所有的折叠

set foldmethod=indent
set foldlevel=1
" set foldcolumn=5

"允许同时编辑多个文件"
"split two.c

"语言"
set helplang=cn

"tab长度为4个空格"
set tabstop=4

"将tab替换为空格"
set expandtab

"当前行交错时使用4个空格"
set shiftwidth=4

"自动缩进4个空格"
set autoindent

""
set fileformats=unix

"显示行号"
set nu

"编辑时显示光标状态"
set ruler

"命令栏的高度"
set cmdheight=3

"搜索时自动处理大小写"
set smartcase

"总是显示状态行"
set laststatus=2

"设置状态栏显示的内容
set statusline=%F%m%r\ [TYPE=%Y]\ [LEN=%L]\ [POS=%04l,%04v]\ [HEX=\%02.2B]

"自动同步文件修改"
set autoread

"搜索时忽略大小写"
set ignorecase

"智能选择对齐方式"
set smartindent

"显示匹配"
set showmatch

"高亮查找"
set hlsearch

"粘贴插入"
set paste

" show command being input "
set showcmd

" show current mode "
set showmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,ucs-bom,gb18030,gbk,gb2312
set fileencoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

"鼠标点击选中当前行"
set cursorline

" Enable mouse usage (all modes) "
set mouse=a

""
set selection=exclusive
set selectmode=mouse,key

""
set report=0


" set mapleader"
let mapleader = "\<Space>"


nmap <leader>t :tabn<cr>
nmap <leader>c :tabc<cr>
nmap <leader>q :close<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""Window Manager Setting""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:persistentBehaviour=0
let g:winManagerWidth=30

" set to auto open winmanager when vim open
" code below should be added to winmanager.vim
" - if g:AutoOpenWinManager
" - autocmd VimEnter * nested call s:StartWindowsManager()|1wincmd w
" - endif
"
let g:AutoOpenWinManager=1

nmap <silent> fir :FirstExplorerWindow<cr>
nmap <silent> bot :BottomExplorerWindow<cr>
nmap <silent> wm :WMToggle<cr>
nmap <leader>w :wincmd w<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""c vim""""""""""
"let g:C_UseTool_cmake='yes'
"let g:C_UseTool_doxygen='yes'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""Emmet.vim""""""
"let g:user_emmet_mode='n'
"let g:user_emmet_install_global=0
"autocmd FileType html,css EmmetInstall
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""TagList Setting""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinWidth=30
"let Tlist_WinHeight=10
let Tlist_Use_Horiz_Window=0

map <silent> tl :TlistToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""Ctags Setting""""""""""""""""""""""""""""""""""""""""""""""
set tags+=tags;
"set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""" add settitle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp, *.c, *.h, *.sh, *.java exec ":call SetTitle()"
func SetTitle(...)
    if &filetype=='sh' || a:0 > 0
        call setline(1, "\#######################################################################")
        call append(line("."),   "\# Copyright (c) xxx CO,.LTD.")
        call append(line(".")+1, "\# All Rights Reserved.")
        call append(line(".")+2, "\# ")
        call append(line(".")+3, "\# File Name   : ".expand("%"))
        call append(line(".")+4, "\# Author      :xxx <xxx@email>")
        call append(line(".")+5, "\# Description : -")
        call append(line(".")+6, "\# Version     : 0.1")
        call append(line(".")+7, "\# Create      : ".strftime("%c"))
        call append(line(".")+8, "\######################################################################### ")
        call append(line(".")+9, "\#!/bin/bash")
        call append(line(".")+10, "")
    else
        call setline(1, "\/*********************************************************************")
        call append(line("."),   "* Copyright (c) xxx CO,.LTD.")
        call append(line(".")+1, "* All Rights Reserved.")
        call append(line(".")+2, "* ")
        call append(line(".")+3, "* File Name   : ".expand("%"))
        call append(line(".")+4, "* Author      : xxx <xxx@email>")
        call append(line(".")+5, "* Description : -")
        call append(line(".")+6, "* Version     : 0.1")
        call append(line(".")+7, "* Create      : ".strftime("%c"))
        call append(line(".")+8, "********************************************************************/")
        call append(line(".")+9, "#include <stdio.h>")
        call append(line(".")+10, "")
    endif
    autocmd BufNewFile * normal G
endfunc


" mkdir -p ~/.vim/plugged
" detailed command in vim-plug@github, or plug.vim in ~/.vim/autoload/
"
"
call plug#begin('~/.vim/plugged')
" plugin go
Plug 'fatih/vim-go'

" plugin javascript indent
Plug 'https://github.com/vim-scripts/JavaScript-Indent.git'

" plugin winmanager
Plug 'https://github.com/vim-scripts/winmanager.git'

" plugin taglist
Plug 'https://github.com/vim-scripts/taglist.vim.git'

" plugin echofunc based on bufexplorer
" this plugin depends on tags, and param '--fields=+lS' should be added to ctags
" Plug 'https://github.com/mbbill/echofunc.git'

" plugin to highlight markdown code
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" plugin for instant markdown, based on nodejs
" more info: http://www.jianshu.com/p/24aefcd4ca93
" Plug 'suan/vim-instant-markdown'

call plug#end()
