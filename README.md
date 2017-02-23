###一键安装脚本安装 
```
chmod 755 install.sh  
./install.sh
```

###二 手动详解安装步骤：
####创建文件夹：
```
cd ~
mkdir .vim
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/ftplugin 
```

####安装python包：
```
pip install autopep8 
pip install jedi
```


####插件管理器安装:
```
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
在vim中 ：PluginInstall 来安装插件

####主题插件安装 
```
mkdir -p ~/.vim/colors && cd ~/.vim/colors                                    
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400 
```
####python 折叠
```
  mkdir -p ~/.vim/ftplugin                                                      
  wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
  ```
####文件头的添加
```
mkdir -p ~/.vim/template/  
cp template/* ~/.vim/template/  
 ```
### 三 用法说明（快捷键）：
####上方的F按键：
>F2 打开文件树
F3 开启格式化粘贴 **(用于在外部粘贴大段代码块，复制进来，要不会无限缩进）**
F4 一键注释
F5 一键执行
F6 快速开启/关闭行号
F8 自动pep8 格式化

####插件列表：
####kien/ctrlp.vim ：

>我的leader键映射的是","
按<leader>f  **(，f)** 打开最近打开的文件，非常好用
按<leader>p **(，p)** 文件所在文件夹列表文件
ctrl + v 竖排打开文件
ctrl + x  上下打开文件
ctrl + t tab中打开文件

#### tacahiroy/ctrlp-funky
  ><leader>fu 进入当前文件的函数列表搜索                                         
  <leader>fU 搜索当前光标下单词对应的函数

#### klen/python-mode
><leader>r 一键执行

#### Valloric/YouCompleteMe
><leader>d : 跳转到函数定义

#### tpope/vim-surround
>"替换: cs"'                                                                     
 ""Hello world!" -> 'Hello world!'                                               
 "替换-标签(t=tag): cst"                                                                                                                                                     
"<a>abc</a>  -> "abc"                                                           
"删除: ds"                                                                      
"Hello world!" -> Hello world!                                                  
"添加(ys=you surround): ysiw"                                                   
 "Hello -> "Hello"                                                               
"添加-整行: yss"                                                                
 "Hello world -> "Hello world" 

#### mattn/emmet-vim
>插入 html:5 ====》ctrl+y+,生产html文件
教程：https://www.zfanw.com/blog/zencoding-vim-tutorial-chinese.html

#### NERD Tree

>通过hjkl来移动光标
o打开关闭文件或目录，如果想打开文件，必须光标移动到文件名
t在标签页中打开
s和i可以水平或纵向分割窗口打开文件
p到上层目录
P到根目录
K到同目录第一个节点
P到同目录最后一个节点 

