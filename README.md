# To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git@github.com:pyraz/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/ackrc ~/.ackrc

# Installing YouCompleteMe

Build Vim from source: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
```shell
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

# Installing vim-go

Install mercurial, install vim-go. On launch vim-go will install its dependent
binarie to ~/.vim-go. I had problems with the following, here are their installation
instructions.

### go.tools orcalce
Run `go get code.google.com/p/go.tools/cmd/oracle` which will install the oracle
binary to $GOPATH/bin. Copy it to ~/.vim-go/

### errcheck
`go get` and `go install` github.com/kisielk/errcheck and copy to ~/.vim-go.


# Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -


# Search and Replace with Ag and Cdo

1. :Ag 'pattern to search'
2. :Cdo s/original/new/c | update

The first step searches recursively from the CWD, which should be the project root.
The second argument does a search and replace, with the 'c' option, which forces
us to confirm each replacement. Finally the update command saves all the now
modified buffers in the QuickFix list.

Furthermore, `\ze`(end) and `\zs`(start) can be used to zero in on a match within a match.
For example, the patter `/Pratical \zsVim/` will match all occurances of the
word "Vim" that occur directly after the word "Practical".
# Solarized

To get solarized to look good in the terminal, install it for terminal from:
https://github.com/sigurdga/gnome-terminal-colors-solarized


# Powerline

## Fontconfig
1. Move vendor/powerline/PowerlineSymbols.otf to ~/.fonts/ (or another X font directory).
2. Run fc-cache -vf ~/.fonts to update your font cache.
3. Move vendor/powerline/10-powerline-symbols.conf to either ~/.fonts.conf.d/ or ~/.config/fontconfig/conf.d/, depending on your fontconfig version.
4. If you don’t see the arrow symbols, please close all instances of your terminal emulator or gvim. You may also have to restart X for the changes to take effect. If you still don’t see the arrow symbols, please submit an issue on GitHub.

## Patched font
1. Download the font of your choice from powerline-fonts. If you can’t find your preferred font in the powerline-fonts repo, you’ll have to patch your own font instead. See Font patching for instructions.
2. Move 'vendor/powerline/Sauce Code Powerline Black.otf' to ~/.fonts/ (or another X font directory).
3. Run fc-cache -vf ~/.fonts to update your font cache.
4. Update Gvim or your terminal emulator to use the patched font. (the correct font usually ends with for Powerline).
5. If you don’t see the arrow symbols, please close all instances of your terminal emulator or gvim. You may also have to restart X for the changes to take effect. If you still don’t see the arrow symbols, please submit an issue on GitHub.
