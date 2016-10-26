# vimrc

自己的vimrc配置文件

##安装步骤：
###创建文件夹：
cd ~
mkdir .vim
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/ftplugin 

###插件管理器安装:
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

在vim中 ：PluginInstall 来安装插件

###主题插件安装                                                                                                                                                                 
   " mkdir -p ~/.vim/colors && cd ~/.vim/colors                                    
   " wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400


###python 折叠
 " mkdir -p ~/.vim/ftplugin                                                      
 " wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
