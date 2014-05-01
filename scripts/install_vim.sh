#!/bin/bash
WHICH_VIM=`which vim`

function install_vim() {
  echo 'Installing Vim'
  apt-get update && apt-get upgrade
  apt-get install -yq libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev \
    mercurial checkinstall
  hg clone https://code.google.com/p/vim/ /usr/src/vim
  cd /usr/src/vim
  ./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7-config \
    --enable-perlinterp \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr \
    --enable-luainterp
  make VIMRUNTIMEDIR=/usr/share/vim/vim74
  checkinstall -y --install
  update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
  update-alternatives --set editor /usr/bin/vim
  update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
  update-alternatives --set vi /usr/bin/vim
  echo 'Vim installation finished'
}

if [ -x "$WHICH_VIM" ] && [ "vim --version | grep 7.4" ]; then
  echo "Vim already present and at 7.4"
else 
  if [ -x "$WHICH_VIM" ]; then
    apt-get remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common
    install_vim
  else
    install_vim
  fi
fi
