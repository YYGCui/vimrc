" 
set nocompatible "explicitly get out of vi-compatible mode
set noexrc "don't use local version of .(g)vimrc, .exrc
set background=dark
set cpoptions=aABceFsmq
"             |||||||||
"             ||||||||+-- when join lines, leave the cursor between joined lines
"             |||||||+-- when a new match is created (showmatch) pause for .5
"             ||||||+-- set buffer options when entering the buffer
"             |||||+-- :write command updates current file name
"             ||||+-- automatically add <CR> to the last line when using :@r
"             |||+-- searching continues at the end of the match at the cursor positon
"             ||+-- a blackslash has no special meaning in mappings
"             |+-- :write updates alternative file name
"             +-- :read updates alternative file name
syntax on
"colorscheme zellner
colorscheme desert
"colorscheme elflord
set number
"
filetype plugin on
filetype indent on
set autoread " auto read when a file is changed from the outside
set autochdir " always switch to the current file directory
"Turn off backup "~" and swap ".swp"
set nobackup " make backup files
set nowritebackup
set noswapfile
"
"set backupdir=~/.vim/backup " where to put backup files
set clipboard+=unnamed " share windows clipboard
"set directory=~/.vim/tmp " directory to place swap files in
set fileformats=unix,dos,mac " support all three
set hidden "change buffers without saving
"set iskeyword+=_,$,@,%,# " none of these are word dividers
"set mouse=a " use mouse everywhere
set noerrorbells
set whichwrap=b,s,h,l,<,>,~,[,] "Wrap movement: everything wraps
"             | | | | | | | | |
"             | | | | | | | | +-- allow cursor key <right> in "Insert/Replace" mode
"             | | | | | | | +-- allow cursor key <left> in "Insert/Replace" mode
"             | | | | | | +-- allow switch case key <~> in "Normal" mode
"             | | | | | +-- allow cursor key <right> in "Normal/Visual" mode
"             | | | | +-- allow cursor key <left> in "Normal/Visual" mode
"             | | | +-- allow cursor key <l> in "Normal/Visual" mode
"             | | +-- allow cursor key <h> in "Normal/Visual" mode
"             | +-- allow space key <space> in "Normal/Visual" mode
"             +-- allow backspace key <backspace> in "Normal/Visual" mode
set wildmenu " turn on command line completion whild style
"
set ignorecase " ignore case when searching
set smartcase
set hlsearch " highlight search things
set incsearch " make serach act like search in modern browsers
"
set lazyredraw " don't redraw while executing macros
set magic " set magic on, for regular expressions
set showmatch " show matching bracets when text indicator is over them
"Text, tab and indent
set expandtab
set shiftwidth=4 " auto-indent amount
set softtabstop=4 " when hitting tab or backspace
set tabstop=4
set smarttab
set autoindent
set smartindent
set linebreak
set textwidth=500
set wrap
set backspace=eol,start,indent
"Status line
set laststatus=2
" %f - path to the file in the buffer, relative to current directory
" %F - full path to file in the buffer
" -- - uppercase hase no square brackets "[]" --
" %m - modified flag "[+]", "[-]" if 'modifiable' is off
" %r - Readonly flag "[RO]"
" %h - Help buffer flag " [help]"
" %w - Preview window flag " [Preview]"
" %Y - Type of file in the buffer " VIM"
" -- - end --
" %l - line number
" %L - number of lines in buffer
" %c - column number
" %p - percentage through file of remain
" %P - percentage through file of displayed window. like "set ruler"
" &ff - file format
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ F:\ %{&ff}\ \ T:\ %Y\ \ En:\ %{&encoding}\ \ %<[%{strftime(\"%Y/%m/%d\-\%H:%M\")}]\ \ %=Line:\ %l/%L:%c\ \ %P
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction
"Taglist
let Tlist_Auto_Open=0 " let the tag list open automagically
let Tlist_Compact_Format=1 "show small menu
let Tlist_Ctags_Cmd='ctags' " location of ctags
let Tlist_Enable_Fold_Column=0 " do show folding tree
"let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1 " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close=0 " fold closed other trees
let Tlist_Sort_Type="name" "orderby
let Tlist_Use_Right_Window=1 " split to the right side of the screen
let Tlist_WinWidth=25
"WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap wm :WMToggle<cr>
"MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs=1

"JS Beautify
let mapleader=","
nnoremap <F4> :call g:Jsbeautify()<CR>

