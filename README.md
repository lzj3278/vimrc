# vimrc

自己的vimrc配置文件 （针对python向）

##一 安装步骤：
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
 
## 二 快捷键：
###上方的f按键：
F2 打开文件树

F3 开启格式化粘贴

F4 一键注释

F6 快速开启/关闭行号

F8 自动pep8 格式化

###插件列表：
####kien/ctrlp.vim ：

，+ f 打开最近打开的文件

，+ p 文件所在文件夹列表文件

ctrl + v 竖排打开文件

ctrl + x  上下打开文件

ctrl + t tab中打开文件

#### tacahiroy/ctrlp-funky
  <leader>fu 进入当前文件的函数列表搜索                                         
  <leader>fU 搜索当前光标下单词对应的函数







