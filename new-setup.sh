sudo apt update
sudo apt upgrade

#zsh and plugins
apt install zsh
curl -L git.io/antigen > antigen.zsh

sudo apt install snapd
sudo snap install lsd

exec shell

#Copy over the .zshrc now that everythinh should be ready and in place
cp ./.zshrc > ~/.zshrc

#Downloading baseline ZSH plugins
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-nvm
antigen bundle lein
antigen bundle command-not-found
antigen bundle pyenv-update
antigen bundle thefuck
antigen bundle zsh-users/zsh-synax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen theme romkatv/powerlevel10k
antigen apply

#Other ZSH Plugins
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate

exec shell



#Get the upgrade going
./start.sh