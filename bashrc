
############################################
# ansi color
############################################
ansi_Black="\e[0;30m"
ansi_Blue="\e[0;34m"
ansi_Green="\e[0;32m"
ansi_Cyan="\e[0;36m"
ansi_Red="\e[0;31m"
ansi_Purple="\e[0;35m"
ansi_Brown="\e[0;33m"
ansi_Gray="\e[0;37m"
ansi_Dark_Gray="\e[1;30m"
ansi_Light_Blue="\e[1;34m"
ansi_Light_Green="\e[1;32m"
ansi_Light_Cyan="\e[1;36m"
ansi_Light_Red="\e[1;31m"
ansi_Light_Purple="\e[1;35m"
ansi_Yellow="\e[1;33m"
ansi_White="\e[1;37m"

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

#if [[ $TERM = "screen" || $REALTERM = "screen" ]]; then
#   PROMPT_COMMAND='echo -n -e "\033k";screen_title;echo -n -e "\033\134"'
#   TERM="xterm-256color"
#   REALTERM="screen"
#fi


## Standard aliases - security
# "-i" asks for confirmation when deleting. This is good.
# In the "dangerous" section there are aliases for non-confirmation.
alias rm='rm -v -i'
alias cp='cp -v -i'
alias mv='mv -v -i'
alias cls='clear'
# Keep in mind that there is also "locate test.c" which is faster.
alias ff='find . -name $*'


set autolist
set autocorrect
set autoexpand
set complete=enhance
set correct=all

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# append to the history file, don't overwrite it
shopt -s histappend

alias a='clear; ls;'
alias server='python -m SimpleHTTPServer 5000'
alias tmux='TERM=screen-256color-bce tmux'

alias src='source ~/.bashrc'
alias ls='ls -al --color=auto'
alias ll="ls -trh"

alias tm='tmux a -t deep'
export DISPLAY='localhost:0'

export CONFIGURE_OPTS=" --enable-unicode=ucs4"
export PYTHON_CONFIGURE_OPTS=" --enable-unicode=ucs4"


export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8



