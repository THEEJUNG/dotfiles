dot files for my Linux/Windows configuration


Default mappings

The following key mappings are provided by default (there is also a menu provided that contains menu items corresponding to all the below mappings):

Most of the following mappings are for normal/visual mode only. The |NERDComInsertComment| mapping is for insert mode only.

[count]<leader>cc |NERDComComment|

Comment out the current line or text selected in visual mode.

[count]<leader>cn |NERDComNestedComment|

Same as cc but forces nesting.

[count]<leader>c<space> |NERDComToggleComment|

Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

[count]<leader>cm |NERDComMinimalComment|

Comments the given lines using only one set of multipart delimiters.

[count]<leader>ci |NERDComInvertComment|

Toggles the comment state of the selected line(s) individually.

[count]<leader>cs |NERDComSexyComment|

Comments out the selected lines with a pretty block formatted layout.

[count]<leader>cy |NERDComYankComment|

Same as cc except that the commented line(s) are yanked first.

<leader>c$ |NERDComEOLComment|

Comments the current line from the cursor to the end of line.

<leader>cA |NERDComAppendComment|

Adds comment delimiters to the end of line and goes into insert mode between them.

|NERDComInsertComment|

Adds comment delimiters at the current cursor position and inserts between. Disabled by default.

<leader>ca |NERDComAltDelim|

Switches to the alternative set of delimiters.

[count]<leader>cl
[count]<leader>cb |NERDComAlignedComment|

Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).

[count]<leader>cu |NERDComUncommentLine|

Uncomments the selected line(s).

# vim-setup

## Normal Mode
* F2: line number toggle
* F8: copy/paste toggle
* Ctrl-T: new tab
* Ctrl-W: close tab
* Tab, Shift-Tab: next tab, previous tab
* \\W: trailing space remove all
* \\Tab: file all auto indent
* \\v: select last pasted part
* \\e: horizontal split
* \\w: vertical split
* Ctrl-j,k,h,l: move between splits
* \\q: close split
* \\ (space): remove search highlits
* ,e: open in current directory
* ,s: split with current directory files
* ,t: new tab with current directory files

## Insert Mode
* F8: paste mode toggle

## plugin key-binding

* F4: NerdTree find current file
* F5: NerdTree close
* Ctrl-P/Ctrl-N: YankRing. After paste, change register of the paste
* \\a: Ack
* \\t: Ctrl-P
* \\o: bufexplorer

## Reference:
* vim-setup: copy from https://github.com/jongman/vim-setup and other web sources

## TODO
*  https://github.com/garybernhardt/dotfiles
*  https://github.com/mathiasbynens/dotfiles
*  https://github.com/gf3/dotfiles/blob/v1.0.0/bootstrap.sh


# tmux-setup
*  bind-key => Ctrl-a (instead of Ctrl-b)
*  split: Ctrl-a - (horizontal) Ctrl-a \ (vertical)
*  rename of pane: Ctrl-a C
*  move between windows : Ctrl-a )(
*  move between panes: hjkl

# Python/Pip install & requirement.txt
## Python
* ./configure --with-ssl --enable-unicode=ucs4 --enable-shared --enable-loadable-sqlite-extensions --prefix=~/local/python2.7 && make && make install
* (never do  --with-pydebug)
* make & make install
## pip
* ~/.pip/pip.conf:
* [install]
* install-option=--install-purelib=/python/packages
##IPython
* gnureadline, nose, mock, casperjs cython jinja2 matplotlib numpy oct2py pygments pymongo qt rpy2 sphinx zmq iptest
##Requirements.txt
* pip install -r requirements.txt
 
## LD_LIBRARY_PATH
LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH

# Run.sh
* sudo apt-get install libxml2-dev libxslt-dev python-dev






## scipy instlal: http://www.scipy.org/install.html
* sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose


## theano install: http://deeplearning.net/software/theano/install_ubuntu.html
* sudo apt-get install python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git
* sudo pip install Theano


