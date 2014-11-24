#!/usr/bin/python
import glob
import os
from subprocess import call
current_dir = os.path.abspath(os.path.dirname(__file__))
j = lambda *args: os.path.join(current_dir, *args)



os.system("rm ~/.tmux.conf")
jobs = [(j("vim"), "~/.vim"), (j("vimrc"), "~/.vimrc"), (j("gitconfig"), "~/.gitconfig"), (j("gitignore"), "~/.gitignore"), (j("tmux.conf"), "~/.tmux.conf")]

for path, target in jobs:
    target = os.path.expanduser(target)
    if os.path.lexists(target):
        print target, "already exists"
    else:
        os.symlink(path, target)
        print "created", target

os.system("tmux source-file ~/.tmux.conf")
