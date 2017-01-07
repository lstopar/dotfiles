#/bin/bash

# man pages
mkdir ~/.zsh



# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# plugins
pushd . /dev/null
cd ~/.oh-my-zsh/custom/plugins
# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
push
popd

ln -s `pwd`/.zshrc ~/.oh-my-zsh/custom/zshrc.zsh
ln -s `pwd`/vi-mode.zsh ~/.oh-my-zsh/custom/vi-mode.zsh
ln -s `pwd`/lstopar.zsh-theme ~/.oh-my-zsh/themes/
