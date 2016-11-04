set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()


" load plugins via Pathogen
" execute pathogen#infect()
" syntax on
" filetype plugin indent on
" Pathogen load
" filetype off

" call pathogen#infect()
" call pathogen#helptags()

filetype plugin indent on



" set notimeout

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" search settings
set ignorecase 
set smartcase " do not ignore case when query is mixed case
set incsearch
set showmatch
set hlsearch " highlight search
map N Nzz " move search result to mid screen
map n nzz

" tab navigation
"set showtabline=2 " always show tab line
" map <C-t> :tabnew<CR>
" map <tab> :tabnext<CR>
" map <S-tab> :tabprevious<CR>
" map <C-w> :tabclose<CR>
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

" mustang ftw!
" colorscheme mustang

" XtermColorTable
set t_Co=256
syntax on
" colorscheme mustang

" plugin commands
" =================

" CtrlP
set wildignore=*.pyc,*.o,*.out,*.png
nnoremap <leader>t :CtrlP<CR>
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 0

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column --nojs"
nnoremap <leader>a :Ack 
nnoremap <leader>A :Ack <C-R><C-W><CR>

" Yankring
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
let g:yankring_history_dir='~/.vim'

" bufexplorer
map <leader>o :BufExplorer<CR>

" NERDTree
let NERDTreeChDirMode=0
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.out$', '\.swp$']
" let NERDTreeShowBookmarks=1
" map <F4> :NERDTreeFind<CR>
" map <F5> :NERDTreeClose<CR>
"

nmap <silent> <F4> :NERDTreeToggle<CR>

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
