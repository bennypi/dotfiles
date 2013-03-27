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

set tabstop=2

" ignore case in search
set ignorecase
" :b <Tab> <- Switch between buffers
" :e <Tab> <- Filebrowser for new buffers 
set wildmenu
set wildignore=*.o,*~,*.pyc,*.aux,*.gz,*.zip,*.pdf

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
map <C-r> :NERDTreeToggle<CR>
map <C-e> :FufCoverageFile<CR>
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
colorscheme railscasts

" searchfold.vim settings
:let g:searchfold_foldlevel = 1 
":let g:searchfold_maxdepth = 7
