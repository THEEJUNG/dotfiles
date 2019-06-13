############################################
# ansi color
############################################
ansi_Black="\[\e[0;30m\]"
ansi_Blue="\[\e[0;34m\]"
ansi_Green="\[\e[0;32m\]"
ansi_Cyan="\[\e[0;36m\]"
ansi_Red="\[\e[0;31m\]"
ansi_Purple="\[\e[0;35m\]"
ansi_Brown="\[\e[0;33m\]"
ansi_Gray="\[\e[0;37m\]"
ansi_Dark_Gray="\[\e[1;30m\]"
ansi_Light_Blue="\[\e[1;34m\]"
ansi_Light_Green="\[\e[1;32m\]"
ansi_Light_Cyan="\[\e[1;36m\]"
ansi_Light_Red="\[\e[1;31m\]"
ansi_Light_Purple="\[\e[1;35m\]"
ansi_Yellow="\[\e[1;33m\]"
ansi_White="\[\e[1;37m\]"

############################################
# prompt (borrow from enition)
############################################
# \u:사용자명 \h:호스트명 \W:현재디렉토리명 \$:현재사용자가root이면#아니면$ \\:\를 표시함
# \t:현재시간(HH:MM:SS) \d:현재날짜 \s:현재사용중인 쉘 \w:현재디렉토리의 전체 절대경로 \#:접속한 순간부터 사용한
if [ `id -u` = 0 ]; then
    #PS1="${ansi_Gray}[${ansi_White}\d \t ${ansi_Light_Red}\u${ansi_White}@\H${ansi_Yellow}:\w${ansi_Gray}]\$ "
    PS1="${ansi_Brown}\u${ansi_White}@\H${ansi_Light_Green}:\w${ansi_Gray}]\$ "
else
    #PS1="${ansi_Gray}[${ansi_White}\d \t ${ansi_Light_Green}\u${ansi_White}@\h${ansi_Yellow}:\w${ansi_Gray}]\$ "
    PS1="${ansi_Brown}\u${ansi_White}@\h${ansi_Light_Green}:\w${ansi_Gray}]\$ "
fi

PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\]$(__git_ps1)$ '


# If you work with git, you've probably had that nagging sensation of not knowing what branch you are on. Worry no longer!
#export PS1='\[\033[01;32m\]\[\033[0m\033[0;32m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] '



export DISPLAY= #"127.0.0.1:0.0"
#export PYTHONPATH=$HOME/anaconda2/bin/
#export PYTHONPATH=$PYTHONPATH:/home/dongyeok/local/python2.7/bin
#export PATH=$PYTHONPATH:$PATH
export PATH=$PATH:$HOME/work/dotfiles
export DISPLAY= #"127.0.0.1:10.0"
export CONFIGURE_OPTS=" --enable-unicode=ucs4"
export PYTHON_CONFIGURE_OPTS=" --enable-unicode=ucs4"

export SVN_EDITOR=vim
export GIT_EDITOR=vim

export TMOUT=0



source aliases


#set autolist
#set autocorrect
#set autoexpand
#set complete=enhance
#set correct=all

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# append to the history file, don't overwrite it
shopt -s histappend
shopt -s checkwinsize
git config --global user.name "Dongyeop Kang"
git config --global user.email "dykang85@gmail.com"
git config --global credential.helper store
#export LC_ALL=ko_KR.UTF-8
#export LANG=ko_KR.UTF-8

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'




