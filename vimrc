" scriptencodig utf-8
" ============================================================================
" Author: Dongyeop Kang
" Version: v1.0
" Update Time: 2017-04-19
" ============================================================================

" no vi-compatible
set nocompatible

" " Setting up Vundle - the best vim plugin manager
" let iCanHazVundle=1
" let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
" if !filereadable(vundle_readme)
"     echo "Installing Vundle..."
"     echo ""
"     silent !mkdir -p ~/.vim/bundle
"     silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"     let iCanHazVundle=0
" endif

filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

let mapleader = ","

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ============================================================================
" Active plugins
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

" Bundle 'vim-scripts/right_align'

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
Bundle 'scrooloose/nerdtree'
" Aligns on any character with ':Align ='
Bundle 'vim-scripts/Align'

" Run ack from within vim!
Bundle 'rking/ag.vim'
noremap <Leader>a :Ag <cword><cr>

" Bundle 'vim-scripts/nerdtree-ack'

" Code commenter: XXX cs cc cu
Plugin 'scrooloose/nerdcommenter'
" Class/module browser: XXX http://ctags.sourceforge.net/
Plugin 'majutsushi/tagbar'
"" Zen coding
Plugin 'mattn/emmet-vim'
" Git integration
Plugin 'motemen/git-vim'
" Tab list panel
Plugin 'kien/tabman.vim'

" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'

" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
" Plugin 'klen/python-mode'

" Python and other languages code checker
" Plugin 'scrooloose/syntastic'


" BEAUTIFUL POWERLINE
" Bundle 'Lokaltog/vim-powerline'

" Git gutter shows diffs on the left num bar!
Bundle 'airblade/vim-gitgutter'

" Coffeescript support
" Bundle 'kchmck/vim-coffee-script'

" Automatically sort python imports
" Plugin 'fisadev/vim-isort'

" Markdown support
Bundle 'tpope/vim-markdown'

" Yank history navigation: yy - > p [C-p]
Plugin 'YankRing.vim'


" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'

" ============================================================================
" Install plugins the first time vim runs

"if iCanHazVundle == 0
    "echo "Installing Plugins, please ignore key map error messages"
    "echo ""
    ":PluginInstall
"endif



"{{{Auto Commands

" Automatically cd into the directory that the file is in
" set autochdir
" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
"  autocmd for opening all new tabs at the end. It works with NERDTree too.
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif


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

filetype plugin indent on

set notimeout
" colorscheme default elflord
colorscheme seoul256

" " fix terminal transparency
hi Normal ctermbg=NONE
hi NonText ctermbg=none
" " set line hi
set cursorline


" search settings
set ignorecase
set smartcase " do not ignore case when query is mixed case
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
" set autoindent
set pastetoggle=<F8>
" save when focus is lost
au FocusLost * :wa
set encoding=utf8
set fileencodings=utf8,cp949
" syntax on
syntax enable
set laststatus=2 " always show status line
" set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ %{fugitive#statusline()}\ [%l,%v][%p%%]
" set number " show line number
set scrolljump=1 " 1 line scrolls
set scrolloff=3 " start scrolling with 3 lines remaining on screen
set visualbell
set cursorline " show cursor line
set ttyfast "
set ruler " show cursor location
set backspace=2 " make backspace work like most other apps
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
set number


" better backup, swap and undos storage
" set directory=~/.vim/dirs/tmp     " directory to place swap files in
" set backup                        " make backup files
" set backupdir=~/.vim/dirs/backups " where to put backup files
" set undofile                      " persistent undos - undo after you
" re-open the file
" set undodir=~/.vim/dirs/undos
" set viminfo+=n~/.vim/dirs/viminfo

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

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
set expandtab
" autocmd FileType c,cpp,js,py set tabstop=2 shiftwidth=2 softtabstop=2
"Set tab size to 2
set tabstop=2
set shiftwidth=2
set softtabstop=2
" smarttab
" set expandtab
" set softtabstop=0 noexpandtab
au Filetype python setl et ts=2 sw=2 softtabstop=2




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
set t_ut=
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
let g:yankring_history_dir='~/.vim'

" bufexplorer
map <leader>o :BufExplorer<CR>

" " nerdTree
" let nerdTreeChDirMode=0
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.out$', '\.swp$']
" let NERDTreeShowBookmarks=1
" map <F4> :NERDTreeFind<CR>
" map <f5> :NERDTreeClose<CR>
" nmap <silent> <F4> :NERDTreeToggle<CR>


" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
" auto open or close NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" " NERDTree -----------------------------
" don;t show these file types

map <F1> :TaskList<CR>
map <F2> :set nonumber! number?<CR>
map <F3> :NERDTreeToggle<CR>
"map <F4> :NERDTreeFind<CR>
nnoremap <silent> <F4> :YRShow<cr>
inoremap <silent> <F4> <ESC>:YRShow<cr>
map <F5> :Tagbar<CR>
map <F6> :TMToggle<CR>



" enable all Python syntax highlighting features
let python_highlight_all = 1

" Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

" nnoremap <F2> :set nonumber! norelativenumber!<CR>
" inoremap <silent> <F2>=<Esc>:set nonumber! norelativenumber!<F2>
" silent! map <F2> :set nonumber! norelativenumber!<CR>
" nmap <F2> :set number! number?<CR>
" nnoremap <F2> :call ToggleMouse()<CR>
" Nnoremap <F3> :set wrap!<CR>

"set <F2>=<C-v><F2>
"map <F2> <C-A>
"map <Esc>[31~ <C-X>


" Tagbar -----------------------------

" autofocus on tagbar open
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin = '$HOME/local/ctags-5.8/ctags'

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

" let g:gitgutter_enabled = 0
" nnoremap <leader>gg :GitGutterToggle<CR>



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

set smarttab
"set smartindent
" set smarttab
" set smartindent
set ttyfast
set autoread
set autowrite
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




" "Syntastic ------------------------------
"" pretty sweet linting/error checking. Works on save
"" :Bundle 'https://github.com/scrooloose/syntastic.git'
""Bundle 'syntastic'
"" show list of errors and warnings on the current file
"nmap <leader>e :Errors<CR>
"" turn to next or previous errors, after open errors list
"nmap <leader>n :lnext<CR>
"nmap <leader>p :lprevious<CR>
"" check also when just opened the file
"let g:syntastic_check_on_open = 1
"" syntastic checker for javascript.
"" eslint is the only tool support JSX.
"" If you don't need write JSX, you can use jshint.
"" And eslint is slow, but not a hindrance
"" let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_checkers = ['eslint']
"" don't put icons on the sign column (it hides the vcs status icons of signify)
"let g:syntastic_enable_signs = 0
"" custom icons (enable them if you use a patched font, and enable the previous setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"" let g:pymode_lint_write = 0
"" let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'pylint', 'python']
"" let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
"" let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'
"" let g:syntastic_python_checkers=['pylint'] "'flake8']
"" let g:syntastic_python_flake8_args='--ignore=E501,E225'
"" let g:syntastic_python_pylint_post_args="--max-line-length=121"

" Python-"mode ------------------------------
"" don't use linter, we use syntastic for that
"let g:pymode_lint_on_write = 0
"let g:pymode_lint_signs = 0
"" don't fold python code on open
"let g:pymode_folding = 0
"" don't load rope by default. Change to 1 to use rope
"let g:pymode_rope = 0
"" open definitions on same window, and custom mappings for definitions and occurrences
"let g:pymode_rope_goto_definition_bind = ',d'
"let g:pymode_rope_goto_definition_cmd = 'e'
"nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
"nmap ,o :RopeFindOccurrences<CR>

" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'
" hidden some types files
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif           "Linux
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }


" iSort ------------------------------
"let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python2'


" SuperTAB: Why does <tab> navigate the completion menu from bottom to top?
let g:SuperTabDefaultCompletionType = "<c-n>"

" Calendar for Google Calendar porting
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1

" Tab moving: overlap TODO because we don't use VIM splits
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap <C-w>l  :tabnext<CR>
nnoremap <C-w>h  :tabprev<CR>



" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>


" Vim-markdown ------------------------------
" Disabled automatically foldinG
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1

" Vim-instant-markdown -----------------

" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

" Tabman
"
let g:tabman_width = 25
let g:tabman_side = 'left'
let g:tabman_specials = 0
let g:tabman_number = 0



" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227




