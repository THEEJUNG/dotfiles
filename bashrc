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

#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\[\033[0m\]$(__git_ps1)\033[1;31m\]\[\033[0m\] \$ '
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]$(__git_ps1)\$\[\033[0m\] '

export DISPLAY= #"127.0.0.1:0.0"
#export DISPLAY="localhost:0.0"
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
git config --global user.name "Taehee Jung"
git config --global user.email "taehee.jung.1224@gmail.com"
git config --global credential.helper store
#export LC_ALL=ko_KR.UTF-8
#export LANG=ko_KR.UTF-8

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'




LS_COLORS='rs=0:di=01;33:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
