call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-git'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'vim-ruby/vim-ruby'
Plug 'rodjek/vim-puppet'
Plug 'bling/vim-bufferline'
Plug 'amdt/vim-niji'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'thoughtbot/vim-rspec'
Plug 'Keithbsmiley/rspec.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'ciaranm/detectindent'
Plug 'endel/ctrlp-filetype.vim'
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'
Plug 'mkitt/tabline.vim'
Plug 'vim-scripts/mru.vim'
call plug#end()

if !has("gui_running")
  let g:gruvbox_italic=0
endif

let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
"let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 3
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#hunks#enabled=0

let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

let g:airline#extensions#tagbar#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:bufferline_echo = 0

"let g:airline_section_b = airline#section#create(['%{getcwd()}'])
let g:airline_section_c = airline#section#create(['%<', '%{getcwd()}', " | ", 'file', "\ua0", 'readonly'])
"let g:airline_section_y = airline#section#create_right(['hunks', 'branch'])
"let g:airline_section_y = airline#section#create(['%{getcwd()}'])
"let g:airline_section_z = airline#section#create(['linenr', ':%3c '])

let g:syntastic_puppet_checkers=['puppetlint']

let g:niji_matching_filetypes = ['lisp', 'clojure', 'puppet', 'java', 'ruby', 'python']
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set term=xterm-256color
set termencoding=utf-8
set background=dark
colorscheme gruvbox

set nocompatible
" http://www.linux.com/archive/feature/120126
"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}\ %{&fo}]\ [%l/%L,%v\ %p%%]\ [HEX=\%02.2B] %{fugitive#statusline()}
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" Always show the status line
" set laststatus=2
" Tabs and indentation (Default to two spaces)
set tabstop=2 "set tab character to 4 characters
set shiftwidth=2 "indent width for autoindent
set expandtab "turn tabs into whitespace
set smartindent
set ambiwidth=double
set display+=lastline
set cursorline
set nojoinspaces
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set matchtime=1
set novb
set noshowmode

" JJM Enable line numbers, useful for discussion when on a projector
set number

"call pathogen#infect()
" JJM Highlight extra white space.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
highlight TrailingWhitespace ctermbg=red guibg=red
highlight TabWhitespace ctermbg=darkgreen guibg=darkgreen
highlight DoubleSpaceAfterPeriod ctermbg=red guibg=red
autocmd Syntax * syn match TrailingWhitespace /\s\+$/
autocmd Syntax * syn match TabWhitespace /[\t]/
autocmd Syntax * syn match DoubleSpaceAfterPeriod /\.  /
" Give an indicator when we approach col 80 (>72)
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>72v', -1)
" Give a strong indicator when we exceed col 80(>80)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" Give an indicator of tailing white space.
au BufWinEnter * let w:m3=matchadd('ErrorMsg', '\s\+$', -1)
" Give an indicator of spaces before a tab.
au BufWinEnter * let w:m4=matchadd('ErrorMsg', ' \+\ze\t', -1)
