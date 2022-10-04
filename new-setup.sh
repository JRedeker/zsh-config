sudo apt update
sudo apt upgrade
sudo apt install neofetch

# ZSH and plugins
sudo apt install zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp ./.p10k.zsh ~/.p10k.zsh


# LSDeluxe
#note: you will need to make sure your terminal has a nerdfont installed
sudo dpkg -i lsd_0.23.1_amd64.debs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install -f lsd

# Copy over the .zshrc
cp ./.zshrc > ~/.zshrc

# ZSH Plugins with Antigen
curl -L git.io/antigen > antigen.zsh
source ./antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-nvm
antigen bundle lein
antigen bundle command-not-found
#antigen bundle pyenv-update
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen apply

# More ZSH Plugins
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Python and friends
getpyenv = exec(curl https://pyenv.run | bash)
echo $getpyenv
git clone https://github.com/mattberther/zsh-pyenv ~/.oh-my-zsh/custom/plugins/zsh-pyenv
git clone https://github.com/pyenv/pyenv-update.git $(pyenv root)/plugins/pyenv-update
git clone https://github.com/momo-lab/xxenv-latest.git "$(pyenv root)"/plugins/xxenv-latest
pyenv update
pyenv install latest

# Pip Packages
pip install thefuck
pip install black

# NVM, Node, and NPM

# NPM Packages
npm install -g typescript
npm install -g ts-node
npm install -g chalk



exec ./start.sh



#Get the upgrade going
./start.sh