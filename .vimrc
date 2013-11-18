set encoding=utf-8    " Set default encoding to UTF-8
" Enable 256 colors
set t_Co=256

" Enable visual bell instead of system bell
set vb

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" current pos
set ruler
" highlight search
set hlsearch
" Highlight search matches instantaneously
set incsearch
set showmatch
" display numbers
set number
" indentation
set smartindent
set autoindent
" /g modifier is the default
set gdefault

" parse modelines
set modeline

" change working directory automatically

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

" Nerd Tree ignore files
let NERDTreeIgnore = ['\.aux$','\.fdb_latexmk$']



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
if has("gui_running")
	" C-Space seems to work under gVim on both Linux and win32
	inoremap <C-Space> <C-n>
else " no gui
	if has("unix")
	  inoremap <Nul> <C-n>
  else
	 " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

nnoremap <F3> :TlistToggle<CR>
nnoremap <F4> :MRU<CR>
nnoremap <F5> :TMiniBufExplorer<CR>

map <leader>w :w<CR>
imap <leader>w <esc><C-w>

map <leader>wq :wq<CR>
imap <leader>wq <esc><leader>wq

nmap <leader>Q :q!<CR>
" imap <leader>Q <esc><leader>Q

map <leader>q :q<CR>

" Buffer navigation with Shift + Arrow L/R
map <S-Left> :bprev<CR>
map <S-Right> :bnext<CR>

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_

" emulate the cmd+r behaviour (run) for different files:
autocmd filetype tex,plaintex map <leader>r \ll
autocmd filetype tex,plaintex map <leader>t :LatexTOCToggle<CR>
" change working directory automatically
autocmd BufEnter * silent! lcd %:p:h

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
" mark bold
vmap <leader>b S}i\textbf
vmap <leader>i S}i\textit

nmap <leader>i A\\<CR>\item 

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
" Press * to search for the next occurence or generally: the word under the
" cursor
"
" Select everything between curly braces:
" vi} The curly brace is the delimiter
"
" Select a whole code block:
" vip (paragraph)
"
" Select everything in a tag (for example: <b>foobar</b>): vit
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
"
" leader z to fold search results, leader iz to go back
"
" ctrl+b screen up, ctrl+f screen down
"
" `. goes back to the last edit
"
" I edit where the first char of the line is
"
" R replace mode, replace everything what's there before
"
" C change a line
"
" G join a line
"
" Go to buffer number 4: :b4
"
" d/bacon/e - delete the line with bacon in it
" y/NerdTree/ - yank everything until "NerdTree"
"
" !%s/bacon/lettuce/ - replace every bacon with lettuce, add g to do it file
" global
"
" reload snippets:
" :call ReloadAllSnippets()
"
" Show all keybindings: :map (without arguments)
"
" abbreviations - :iab teh the
colorscheme railscasts

" searchfold.vim settings
:let g:searchfold_foldlevel = 1 
":let g:searchfold_maxdepth = 7
"
" Modify shell to source the ,bash_profile
" set shell=bash\ --login

" Taglist settings
"
" Show only functions and classes in php
let tlist_php_settings = 'php;c:class;f:function'

" Exit if taglist is the only open window
let Tlist_Exit_OnlyWindow = 1

" Start at the right side of the windows
let Tlist_Use_Right_Window   = 1

" Enable C++ Omni Completion
" au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.cc set omnifunc=omni#cpp#complete#Main
"
" Define markdown Filetype
au BufRead,BufNewFile *.md set filetype=markdown
