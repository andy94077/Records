#!/usr/bin/env bash
chsh -s $(which zsh)
if [ $? != 0 ]; then
	echo 'exec $(which zsh) --login' >> ~/.bashrc
fi

cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp ~b06902001/.zshrc ~/.zshrc
cp ~b06902001/.oh-my-zsh/custom/themes/saiko.zsh-theme ~/.oh-my-zsh/custom/themes
zsh ~/.zshrc
