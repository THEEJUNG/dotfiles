

sudo apt-get install tmux

sudo apt-get install xclip or $ sudo apt-get install xsel


# tmux
http://stackoverflow.com/questions/25940944/ugrade-tmux-from-1-8-to-1-9-on-ubuntu-14-04
apt-get install libevent-dev exuberant-ctags cmake libevent-dev libncurses5-dev
git clone https://github.com/tmux/tmux.git
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install pip
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
python get-pip.py

# tensorflow
#https://github.com/tensorflow/tensorflow/blob/master/tensorflow/g3doc/get_started/os_setup.md
# For CPU-only version
pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

# For GPU-enabled version (only install this version if you have the CUDA sdk installed)
pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl


# Theano

# Keras

# Torch

