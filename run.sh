
## htop
#sudo apt-get install htop
#mkdir -p ~/.config/htop
#sudo apt-get install tmux
#sudo apt-get install xclip
#sudo apt-get install xsel
#
## tmux update
#sudo apt-get update
#sudo apt-get install -y python-software-properties software-properties-common
#sudo add-apt-repository -y ppa:pi-rho/dev
#sudo apt-get update
#sudo apt-get install -y tmux=2.0-1~ppa1~t

## anaconda python
#mkdir -p ~/down
#cd ~/data
#wget -nc http://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
#bash Anaconda2-4.2.0-Linux-x86_64.sh
#
#curl https://bootstrap.pypa.io/ez_setup.py -o - | python

# install dot files
python install.py
source ~/.bashrc

# install dependencies
pip install -r requirements.txt

#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

##install java using conda
#conda install -c cyclus java-jdk=8.45.14

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#pip install neovim

# install ctags for Tagbar
#wget --directory-prefix=$HOME/local http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
#cd $HOME/local
#tar -zxvf ctags-5.8.tar.gz
#cd ./ctags-5.8
#./configure --prefix=$HOME/local
#make && make install


