

set nocompatible              " be iMproved, required

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader = ","

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

" Allows you to use <tab> for all insert completion needs
Bundle 'ervandew/supertab'

" Comment plugin - gcc toggles comment of current line
Bundle 'tomtom/tcomment_vim'

" adds cool git stuff from within vim
Bundle 'tpope/vim-fugitive'

" cs"' changes surrounding " to '
Bundle 'tpope/vim-surround'

" quick file switcher
Bundle 'wincent/Command-T'

Bundle 'vim-scripts/right_align'


"" display color for code code 
" Bundle 'lilydjwg/colorizer'
Bundle 'flazz/vim-colorschemes'

"" calendar
Bundle 'itchyny/calendar.vim'


" Snipmate and dependencies
" Allows you to complete code snipits like 'for loops'!
" Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle "tomtom/tlib_vim"
" Bundle "honza/snipmate-snippets"
" Bundle 'garbas/vim-snipmate'

" fantastic file browser, open a directory with vim
" Bundle 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
" noremap <Leader>a :NERDTreeFocus<CR>

" Aligns on any character with ':Align ='
Bundle 'vim-scripts/Align'

" Run ack from within vim!
Bundle 'rking/ag.vim'
noremap <Leader>a :Ag <cword><cr>

" 1. Open NERDtree
" 2. Point to a directory
" 3. Press `ms`
" 4. Enter search term (e.g. `control\ panel -i`)
" 5. Profit!
" Bundle 'vim-scripts/nerdtree-ack'


" BEAUTIFUL POWERLINE
Bundle 'Lokaltog/vim-powerline'

" Git gutter shows diffs on the left num bar!
Bundle 'airblade/vim-gitgutter'

" Coffeescript support
Bundle 'kchmck/vim-coffee-script'

" Markdown support
Bundle 'tpope/vim-markdown'

"{{{Auto Commands

" Automatically cd into the directory that the file is in
" set autochdir

" Remove any trailing whitespace that is in the file
" autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
  au!
  autocmd BufReadPost *
        \ if expand("<afile>:p:h") !=? $TEMP |
        \   if line("'\"") > 1 && line("'\"") <= line("$") |
        \     let JumpCursorOnEdit_foo = line("'\"") |
        \     let b:doopenfold = 1 |
        \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
        \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
        \        let b:doopenfold = 2 |
        \     endif |
        \     exe JumpCursorOnEdit_foo |
        \   endif |
        \ endif
  " Need to postpone using "zv" until after reading the modelines.
  autocmd BufWinEnter *
        \ if exists("b:doopenfold") |
        \   exe "normal zv" |
        \   if(b:doopenfold > 1) |
        \       exe  "+".1 |
        \   endif |
        \   unlet b:doopenfold |
        \ endif
augroup END

"}}}

"{{{Misc Settings




filetype plugin indent on






" set notimeout
" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab



" colorscheme default
" colorscheme elflord
colorscheme zenburn
" " fix terminal transparency
hi Normal ctermbg=NONE
hi NonText ctermbg=none
" " set line hi
set cursorline
" " diff colors
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=23 gui=none guifg=bgguibg=Red
highlight DiffDelete cterm=bold ctermfg=1 ctermbg=23 gui=none guifg=bgguibg=Rex
highlight DiffChange cterm=bold ctermfg=10 ctermbg=23 gui=none guifg=bgguibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bgguibg=Red


" search settings
set ignorecase 
set smartcase " do not ignore case when query is mixed case
set incsearch
set showmatch
set hlsearch " highlight search
map N Nzz " move search result to mid screen
map n nzz
" tab navigation
" set showtabline=2 " always show tab line
" line wraps
set wrap
set textwidth=0 
" autoindent
set autoindent
set pastetoggle=<F8>
" save when focus is lost
au FocusLost * :wa
set encoding=utf8
set fileencodings=utf8,cp949
" syntax on 
syntax enable
set laststatus=2 " always show status line
" set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ %{fugitive#statusline()}\ [%l,%v][%p%%]
set number " show line number
set scrolljump=1 " 1 line scrolls
set scrolloff=3 " start scrolling with 3 lines remaining on screen
set visualbell 
set cursorline " show cursor line
set ttyfast " 
set ruler " show cursor location
set backspace=indent,eol,start " fix backspace
set mouse=a " use mouse
set showmode " 
set showcmd " 
set hidden " 
set wildmenu " autocomplete
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,] " 
set lazyredraw " do not redraw while running macros
set history=1000 " 
set undolevels=1000 " 

let mapleader = "\\"

set foldmethod=syntax
set foldlevel=999 " do not fold at first

" keyboard maps
" ===========

nnoremap j gj
nnoremap k gk
" type ; instead of :
nnoremap ; :
" copy to EOL
nnoremap Y y$
" shift in visual mode
vnoremap < <gv
vnoremap > >gv
" copy and paste to/from system clipboard!
vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>
imap <C-v> <Esc><C-v>a

" autocmds
" ========
autocmd FileType c,cpp,js,py set expandtab

" leader commands
" =============

" reindent whole file
nmap <silent> <leader><tab> mzgg=G`z
" get rid of search highlights
nmap <silent> <leader><space> :nohlsearch<cr>
" get rid of trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" source this vimrc
nnoremap <leader>sv :so $MYVIMRC<CR>
" select last pasted
nnoremap <leader>v V`]
" vertical split
nnoremap <leader>w <C-w>v<C-w>l
" horizontal split 
nnoremap <leader>e <C-w>s<C-w>j
" close split 
nnoremap <leader>q <C-w>q
" move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-l> <C-w>l
nnoremap <leader>= <C-w>=

" open in current directory..
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>


" XtermColorTable
set t_Co=256
syntax on

" plugin commands
" =================

" CtrlP
set wildignore=*.pyc,*.o,*.out,*.png
nnoremap <leader>t :CtrlP<CR>
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 0

" Ack
" let g:ackprg="ack-grep -H --nocolor --nogroup --column --nojs"
nnoremap <leader>a :Ack 
nnoremap <leader>A :Ack <C-R><C-W><CR>

" Yankring
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
let g:yankring_history_dir='~/.vim'

" bufexplorer
map <leader>o :BufExplorer<CR>

" nerdTree
" let nerdTreeChDirMode=0
" leT neRDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.out$', '\.swp$']
" let NERDTreeShowBookmarks=1
" map <F4> :NERDTreeFind<CR>
" map <F5> :NERDTreeClose<CR>
"

" nmap <silent> <F4> :NERDTreeToggle<CR>

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif




" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif




" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" enable all Python syntax highlighting features
let python_highlight_all = 1


" Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

nnoremap <F2> :call ToggleMouse()<CR>
nnoremap <F3> :set wrap!<CR>
function! ToggleMouse()
  if &mouse == 'a'
	set nonu
    set mouse=
    echo "Mouse usage disabled"
  else
	set nu
    set mouse=a
    echo "Mouse usage enabled"
  endif
endfunction

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

silent !stty -ixon > /dev/null 2> /dev/null
nnoremap <C-q> :qa<CR>

let g:gitgutter_enabled = 0
nnoremap <leader>gg :GitGutterToggle<CR>



" Statusline
" https://github.com/pengwynn/dotfiles/blob/master/vim/vimrc.symlink#L160
set statusline=                                     " Override default
" set statusline+=%1*%{fugitive#statusline()[4:-2]}%* " Show fugitive git info
set statusline+=%2*\ %f\ %m\ %r%*                   " Show filename/path
set statusline+=%3*%=%*                             " Set right-side status info after this line
set statusline+=%4*%l/%L:%v%*                       " Set <line number>/<total lines>:<column>
set statusline+=%5*\ %*                             " Set ending space

" Visualize tabs, trailing whitespaces and funny characters
" http://www.reddit.com/r/programming/comments/9wlb7/proggitors_do_you_like_the_idea_of_indented/c0esam1
" https://wincent.com/blog/making-vim-highlight-suspicious-characters
" set list
" set listchars=nbsp:¬,tab:»·,trail:·



hi User1 ctermfg=196 guifg=#eea040 guibg=#222222
hi User2 ctermfg=75 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 ctermfg=239 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222


"set smarttab
"set smartindent
set ttyfast
set autoread
set more
set cursorline!



" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" No annoying sound on errors
set noerrorbells
set novisualbell
set timeoutlen=500

" visual bell color

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic



""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  4 => Display {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme solarized
" set background=dark                         " color
" set novisualbell                            " No mouseflash
" set encoding=utf8
" colorscheme desert                          " color


" Set tab size to 2
set tabstop=2 shiftwidth=2 expandtab

" pretty sweet linting/error checking. Works on save
" :Bundle 'https://github.com/scrooloose/syntastic.git'
"Bundle 'syntastic'
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"" let g:pymode_lint_write = 0
"" let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'pylint', 'python']
"" let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
"" let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'
"" let g:syntastic_python_checkers=['pylint'] "'flake8']
"" let g:syntastic_python_flake8_args='--ignore=E501,E225'
"
"let g:syntastic_python_pylint_post_args="--max-line-length=120"
