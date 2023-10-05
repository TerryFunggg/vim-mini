Installation
Create folder in system
```sh
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
cp .vimcr ~/

```
Plugin manager using Vim-plug:
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Run `:PlugInstall` in Vim

Reference:
https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
