# install zsh vim tmux wget berforehand
# remember to run this in dotfile repo root

# change shell
chsh -s $(which zsh)

# vim-plug (for unix only)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tpm for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# oh-my-zsh (remember to exit after it automatically enter zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy configure file to root
cp .vimrc ~
cp .tmux.conf ~
cp .gitconfig ~
cp -r nvim ~/.config

# install font MesloLGS NF 
mkdir ~/Downloads
# cd ~/Downloads
# wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
# wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
# wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
# wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
#
#
#
#
# steps after all these:
# 1. reopen shell to get into zsh
# 2. edit .zshrc for powerlevel10k, then restart shell againto init
# 3. use prefix + I in tmux to install packages
# 4. type :PlugInstall in vim to instlal plugins
# 5. add two add ins to .zshrc
