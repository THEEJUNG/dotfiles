
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH

alias ll="ls -alrt"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda3 4.2.0 installer
export PATH="//anaconda/bin:$PATH"

# added by Anaconda2 4.3.0 installer
export PATH="/Users/TAEHEEJUNG/anaconda2/bin:$PATH"

source ~/.bashrc  # get my Bash aliases

export PATH="$HOME/.cargo/bin:$PATH"


# added by Anaconda3 5.2.0 installer
#export PATH="/anaconda3/bin:$PATH"
#export PATH="$PATH:/anaconda3/bin"

# added by Anaconda3 installer
export PATH="/Users/TAEHEEJUNG/anaconda3/bin:$PATH"

# Java 12 as default
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-12.0.2.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
