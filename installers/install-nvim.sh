sudo apt remove --auto-remove neovim
sudo apt purge --auto-remove neovim
sudo rm -rf ~/.config/nvim

sudo apt install fd-find
sudo apt install ripgrep
sudo apt install cmake
sudo apt install gettext
sudo apt install unzip
sudo apt install ninja-build
sudo apt install libtool
sudo apt install libtool-bin
sudo apt install autoconf
sudo apt install automake
sudo apt install g++
sudo apt install pkg-config
sudo apt install curl
sudo apt install xclip

git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim
ls
sudo make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
sudo rm -rf neovim
cd .

if [ ! -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/LazyVim/starter ~/.config/nvim
fi
