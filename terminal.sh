#!/bin/bash

source helpers.sh

# Install Tilix
sudo apt install tilix
sudo update-alternatives --config x-terminal-emulator
notification "✅ tilix terminal successfully installed"

# Install Zhell
sudo apt install zsh
chsh -s $(which zsh)
notification "✅ zshell successfully installed and configurate"

# Install Oh my Zsh and powerlevel10k
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
notification "✅ Oh my Zsh and powerlevel10k successfully installed"

# Install neovim
notification "🔃 NEOVIM CONFIGURATION"
sudo apt install neovim
notification "✅ neovim successfully installed"

# Install and configure nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
notification "✅ nvchad successfully installed"

# Custom alias
echo "alias update='sudo apt update; sudo apt upgrade; sudo snap refresh'" >> ~/.zshrc
echo "alias ssh_keys='cat ~/.ssh/id_rsa.pub | xclip -selection clipboard'" >> ~/.zshrc
echo "alias venv='python3 -m venv venv; cat "✅ Successfully created virtual environment"'" >> ~/.zshrc
echo "alias activate='source venv/bin/activate'" >> ~/.zshrc
notification "✅ alias created successfully"
