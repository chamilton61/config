# ~/config


## Installations
---Ubuntu
1 check installation of git and vim

2 install tmux 
`sudo apt-get update
sudo apt-get install tmux`

3 install ag (https://github.com/ggreer/the_silver_searcher)
`sudo apt-get install silversearcher-ag`

4 install vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## Setting up configurations

1 clone repo
`git clone git@github.com:chamilton61/config.git`

2 add `source ~/config/.bashrc`to your .bashrc file

3 add `source ~/config/.vimrc` to your .vimrc file

4 create a .gitconfig file if there isn't one and add 
`[include]
  path = ~/config/.gitconfig`
  to it

5 run vim and press enter to ignore the error message about molokai
  once you're in vim do `:PluginInstall`
