" Vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'tpope/vim-commentary'

" Load in this order, otherwise fold will fail
Plugin 'lervag/vimtex'
Bundle 'matze/vim-tex-fold'
" Load in this order, otherwise fold will fail
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'pangloss/vim-javascript'

Plugin 'udalov/kotlin-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'mxw/vim-jsx'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'sirver/ultisnips'
"     let g:UltiSnipsExpandTrigger = '<tab>'
"     let g:UltiSnipsJumpForwardTrigger = '<tab>'
"     let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call vundle#end()
filetype plugin indent on

" Default settings

source $VIMRUNTIME/defaults.vim

" Tabs setting

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
" set expandtab
set number
syntax enable

" Keymappings

ino <C-J> <Down>
ino <C-K> <Up>
ino <C-H> <Left>
ino <C-L> <Right>
ino <C-Z> <Esc>ui
nn <C-Z> u
ino <C-Y> <Esc><C-R>i
nn <C-Y> <C-R>
nn U <C-R>
" ino <Tab> <C-N>
ino <Esc>D <Esc>yypi
vn <Esc>D yp
nn <Esc>D yyp
ino <C-C> <Esc>zza
ino <C-B> <C-W>
ino <C-W> <Esc>lcw
ino <Esc>/ <Esc><Plug>CommentaryLinei
vn <Esc>/ <Plug>Commentary
nn <Esc>/ <Plug>CommentaryLine
ino <C-O> <Esc>o
ino <C-P> <Esc>O
vn <C-C> :w !xclip -selection clipboard <CR><CR>
ino <C-E> <Esc>lC
ino <Esc>b <C-Left>
ino <Esc>w <C-Right>
ino <Esc>6 <Esc>^i
ino <Esc>4 <Esc>$a
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
set timeout timeoutlen=100

" Misc

set foldmethod=syntax
set foldlevel=99
highlight ColorColumn ctermbg=grey

set hlsearch
set incsearch

set cursorline

" Syntax

autocmd Syntax * syntax keyword Todo containedin=.*Comment.* contained NOTE
autocmd Syntax * syntax keyword Underlined containedin=.*Comment.* contained param return returns brief see exception deprecated callback
" Set syntax sh for all unknown files
autocmd BufRead,BufNewFile * if &syntax == '' | set syntax=sh | endif
" Stellarium script (ECMA)
autocmd BufRead,BufNewFile *.ssc set syntax=javascript
" Config files
autocmd BufRead,BufNewFile config set syntax=cfg

" For longer lines
set synmaxcol=5000

" Global variables

" Apply vimrc to netrw
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
" Disallow vimtex to search for all sty files in autocomplete
let g:vimtex_include_search_enabled = 0
" Other netrw
let g:netrw_banner = 0
" let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Vim diff
if &diff
	map [ [c
	map ] ]c
endif
