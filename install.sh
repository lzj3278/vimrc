#! /bin/bash
##################
##Created Time: 2016-11-01 14:38:41
##################


install_vim = true
CURRENT_DIR=`pwd`


echo "step1: backing up current vim config"
today=`date +%Y%m%d`
if $install_vim; then
    for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done
    for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -L $i ] && unlink $i ; done
fi

echo "step2: setting up dir,copy vim inside"

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/template/

yum install python -y 
yum install cmake -y 
yum install -y gcc gcc-c++


pip install autopep8  jedi > /dev/null 2>&1

cp template/* ~/.vim/template/
cp .vimrc ~/

cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492

echo "Step3: update/install plugins using Vundle"

system_shell=$SHELL
export SHELL="/bin/sh"

vim -u ~/.vimrc +PluginInstall! +qall

export SHELL=$system_shell

#echo "Step4: compile YouCompleteMe"
#echo "It will take a long time, just be patient!"
#echo "If error,you need to compile it yourself"
#echo "cd ~/.vim/bundle/YouCompleteMe/ && python install.py "
#cd ~/.vim/bundle/YouCompleteMe/
#git submodule update --init --recursive

#python install.py

echo "Install Done"
