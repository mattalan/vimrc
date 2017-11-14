#vimrc
this is the backup of my own vimrc, welcomde fork or commit.

---
## 1\. replace .vimrc
cp vimrc ~

rm -f .vimrc

mv vimrc .vimrc

## 2\. add plug.vim
mkdir -p ~/.vim/autoload

cp plug.vim ~/.vim/autoload

chmod +x ~/.vim/autoload


## 3\. install vim plugins
vim

:PlugInstall


## note:
winmanager should be added with auto open config.
vim-go may threw out warning in some vim version.
