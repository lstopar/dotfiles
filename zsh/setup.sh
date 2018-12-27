#/bin/bash

# 1) install ZSH
# sudo -apt-get install zsh
# 2) install OH-MY-ZSH
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# plugins
cd ~/.oh-my-zsh/custom/plugins
# syntax highlighting
if [ ! -d "zsh-syntax-highlighting" ]; then
    echo 'Installing syntax highlighting ...'
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
cd ../../..

if [ -e "$HOME/.oh-my-zsh/custom/zshrc.zsh" ] || [ -L "$HOME/.oh-my-zsh/custom/zshrc.zsh" ]; then
    echo 'Removing zshrc.zsh ...'
    rm $HOME/.oh-my-zsh/custom/zshrc.zsh
fi

if [ -e "$HOME/.oh-my-zsh/custom/vi-mode.zsh" ] || [ -L "$HOME/.oh-my-zsh/custom/vi-mode.zsh" ]; then
    echo 'Removing vi-mode.zsh ...'
    rm $HOME/.oh-my-zsh/custom/vi-mode.zsh
fi

if [ -e "$HOME/.oh-my-zsh/themes/lstopar.zsh-theme" ] || [ -L "$HOME/.oh-my-zsh/themes/lstopar.zsh-theme" ]; then
    echo 'Removing theme ...'
    rm $HOME/.oh-my-zsh/themes/lstopar.zsh-theme
fi

if [ -e "$HOME/.zshrc" ] || [ -L "$HOME/.zshrc" ]; then
    echo 'Removing .zshrc ...'
    rm $HOME/.zshrc
fi

if [ -e "$HOME/.zshenv" ] || [ -L "$HOME/.zshenv" ]; then
    echo 'Removing .zprofile ...'
    rm $HOME/.zshenv
fi

if [ ! -d "$HOME/.env" ]; then
    echo "Creating ~/.env ..."
    mkdir $HOME/.env
fi

ln -s `pwd`/zshrc.zsh ~/.oh-my-zsh/custom/zshrc.zsh
ln -s `pwd`/vi-mode.zsh ~/.oh-my-zsh/custom/vi-mode.zsh
ln -s `pwd`/lstopar.zsh-theme ~/.oh-my-zsh/themes/
ln -s `pwd`/.zshrc ~/.zshrc
ln -s `pwd`/.zshenv ~/.zshenv
