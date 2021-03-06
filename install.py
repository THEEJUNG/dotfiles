#!/usr/bin/python
import glob
import os
from subprocess import call
current_dir = os.path.abspath(os.path.dirname(__file__))
j = lambda *args: os.path.join(current_dir, *args)



#os.system("sed -i '1s/^/if [ -f ~/work/dotfiles/bashrc ]; then . ~/work/dotfiles/bashrc ; fi' ~/.bashrc")

os.system("echo 'if [ -f ~/work/dotfiles/bashrc ]; then . ~/work/dotfiles/bashrc ; fi' | cat - ~/.bashrc > temp && mv temp ~/.bashrc")
os.system("tmux source-file ~/.tmux.conf")
#os.system("source ~/.bashrc")


#import urllib
#urllib.urlretrieve("https://bootstrap.pypa.io/get-pip.py", filename="get-pip.py")

os.system("mv ~/.tmux.conf ~/.tmux.conf.old")
jobs = [(j("bashrc"),"~/.bashrc"),(j("vim"), "~/.vim"), (j("htoprc"), "~/.htoprc"), (j("theanorc"), "~/.theanorc"), (j("vimrc"), "~/.vimrc"), (j("nvimrc"), "~/.config/nvim/init.vim"), (j("gitconfig"), "~/.gitconfig"), (j("gitignore"), "~/.gitignore"), (j("tmux.conf"), "~/.tmux.conf"), (j("htoprc"), "~/.config/htop/htoprc") ]

for path, target in jobs:
    print (target, path)
    target = os.path.expanduser(target)
    if os.path.lexists(target):
      print (target, "already exists")
    else:
      try:
        os.symlink(path, target)
        print ("created", target)
      except Exception as e:
        print (e)
        pass


