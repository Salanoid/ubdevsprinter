sudo apt install build-essential curl file git
sudo apt install zsh
chsh -s $(which zsh)
sudo apt install git-core curl fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
