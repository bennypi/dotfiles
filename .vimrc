set encoding=utf-8    " Set default encoding to UTF-8
" Enable 256 colors
set t_Co=256

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" current pos
set ruler
" highlight search
set hlsearch
set showmatch
" display numbers
set number
" indentation
set smartindent
set autoindent

set tabstop=2
set shiftwidth=2
set softtabstop=2
" Mark buffers ashidden without asking
set hidden

" ignore case in search
set ignorecase
" :b <Tab> <- Switch between buffers
" :e <Tab> <- Filebrowser for new buffers 
set wildmenu
set wildignore=*.o,*~,*.pyc,*.aux,*.gz,*.zip,*.pdf

" Show invisibles
" nmap <leader>l :set list!<CR>
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬


" new windows:
" :vnew -> vertical new windows
" CTRL+W s -> split window
" Movement : CTRL+W h,j,k,l

" filetype plugin on
syntax on
filetype plugin indent on

" set ofu=syntaxcomplete#Complete
let mapleader=","
execute pathogen#infect()

" mappings
map <C-e> :NERDTreeToggle<CR>
map <C-t> :FufCoverageFile<CR>
map <C-b> :FufBuffer<CR>

map <leader>w :w<CR>
imap <leader>w <esc><C-w>

map <leader>wq :wq<CR>
imap <leader>wq <esc><leader>wq

map <leader>Q :q!<CR>
imap <leader>Q <esc><leader>Q

map <leader>q :q<CR>

" tcomment mappings
" map every useful scenario to leader-c
nmap <leader>c gcc
vmap <leader>c gc

nmap <leader>l :set list!<CR>

" Enable "normal" indent behaviour
nmap <leader>< <<
nmap <leader>> >>
vmap <leader>< <gv
vmap <leader>> >gv


" Execute shell comand
" %! date
" f{char} -> go to the first occurence of 'char' in the line
" cw - change a word (replace the rest of the cursor)
"
" surround-vim:
" When you are in "Hello world!" , change the delimiters to ' instead of "
" with:
" cs"'
" Surround something in the visual or visual block mode:
" Select stuff, press S and type in the delimter
"
" Surround a word:
" viw
"
" Surround a word and add quote to it
" viwS"
"
" Search for a selected word.
" Select the word: viw<esc>
" Press * to search for the next occurence
"
" Select everything between curly braces:
" vi} The curly brace is the delimiter
"
" Select a whole code block:
" vip (paragraph)
"
" Go forward one sentence: ) , backwards: (
" 
" Make a marker in a text: ma
" Jump back to it: 'a
"
" lazy autocomplete: ctrl+n
"
" == indents stuff according to language style
"
" =G indent everything in the whole file (G)
"
" g; go back to the last changes
"
" ctrl+r redo
"
"c{motion} change a selection and go into edit mode. got for the dot command
"
"gj -> go one VISUAL line down. dont jump to the next "numbered" line
"
" Add a file in NerdTree: m (enter fs menu) a
" Select everything in a file: gg vG
colorscheme railscasts

" searchfold.vim settings
:let g:searchfold_foldlevel = 1 
":let g:searchfold_maxdepth = 7
"
