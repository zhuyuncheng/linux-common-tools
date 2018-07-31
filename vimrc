" vim 目录显示配置 start
execute pathogen#infect()
nnoremap <silent> <F2> :NERDTree<CR>
" vim 目录显示配置 end

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set mouse=a						" 增加鼠标点击
set showmatch         " 高亮显示对应的括号
set number            " 显示行号
set cindent           " C风格的对齐方式
set autoindent        " 自动对齐
set confirm           " 在处理未保存或只读文件的时候，弹出确认
set tabstop=2         " Tab键的宽度
syntax on             " 自动语法高亮

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 在状态行上显示光标所在位置的行号和列号 
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 自动格式化 
set formatoptions=tcrqn 
" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent

set softtabstop=2
set shiftwidth=2      " 统一缩进为4
"colorscheme torte    " 设置颜色主题

set langmenu=zn_CN.UTF-8
set helplang=cn       " 语言设置
set matchtime=5				" 对应括号高亮的时间（单位是十分之一秒）

"代码补全
set completeopt=preview,menu

set hlsearch
set incsearch         " 搜索逐字符高亮

" 设定默认解码
set encoding=utf-8 
set fileencodings=usc-bom,utf-8,cp936  

" 设置颜色主题
colorscheme desert
" 改变行号的颜色
:highlight LineNr ctermfg=red
