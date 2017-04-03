# Lucas Narciso's Personal Vim Files

Vim is a great tool out of the box, but it is also highly modifiable and can be personalized to be even better. This repository contains my personalized vim configuration files. The important file here is the `.vimrc`. In order to try this configuration out, you can do what I do: clone the repository, move the contents to `~/.vim` (I do this in an attempt to be a little bit more organized) and `.vimrc` to `~\.vimrc`, install Vundle, and use it to install the plugins included here. I run the commands bellow:

```
$ cd ~
```
```
$ git clone https://github.com/lucasnar/vim
```
```
$ mv vim .vim
```
```
$ ln -s .vim/.vimrc .vimrc # For keeping .vimrc under version control and not having to be moving it around.
```
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim # Vundle installation.
```
Inside Vim, type:
```
:PluginInstal
```

That's it! Here is the one line version to my future self's convenience:

`$ cd ~ && git clone https://github.com/lucasnar/vim && mv vim .vim && ln -s .vim/.vimrc .vimrc && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall!`
