dot files for my Linux/Windows configuration

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
## Python (UCS4, shared)
* ./configure --enable-shared --enable-unicode=ucs4 --prefix=/local/dir/to/install
* make & make install
## Pip
* pip install --install-option="--install-purelib=/python/packages" package_name
##IPython
* gnureadline, nose, mock, casperjs cython jinja2 matplotlib numpy oct2py pygments pymongo qt rpy2 sphinx zmq
* iptest
##Requirements.txt
* pip install -r requirements.txt
* sudo apt-get install libxml2-dev libxslt-dev python-dev


## python install
./configure --with-ssl --enable-shared --with-pydebug --prefix=~/lib/python2.7
make
make install


## LD_LIBRARY_PATH
LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH


## pip install path
* ~/.pip/pip.conf:
* [install]
* install-option=--install-purelib=/python/packages




