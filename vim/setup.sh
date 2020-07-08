#!/usr/bin/env bash

set -e

# install vim package manager
PMDIR=~/.vim/bundle/Vundle.vim
if [ -d "${PMDIR}" ]; then
    pushd "${PMDIR}" > /dev/null && git pull --rebase && popd > /dev/null
else  
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# install ctags
case `uname -s` in
"Linux")
    sudo apt-get install ctags
    ;;
"Darwin")
    HOMEBREW_NO_AUTO_UPDATE=1 brew install ctags
    ;;
*)
    ;;
esac

# config and install plugins
mkdir -p ~/.vim/customize
cp plugin.vim ~/.vim/customize/
cp vimrc.vim ~/.vimrc
vim +PluginInstall +qall

echo "Done!"
