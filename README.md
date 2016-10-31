# ~/config


## SETUP

1 check installation of git and vim

2 install tmux 
`sudo apt-get update
sudo apt-get install tmux`

3 install vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

4 clone repo
`git clone git@github.com:chamilton61/config.git`

5 add `source ~/config/.bashrc`to your .bashrc file

6 add `source ~/config/.vimrc` to your .vimrc file

7 create a .gitconfig file if there isn't one and add 
`[include]
  path = ~/config/.gitconfig`
  to it

8 run vim and press enter to ignore the error message about molokai
  once you're in vim do `:PluginInstall`

