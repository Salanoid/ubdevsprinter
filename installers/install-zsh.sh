sudo apt install build-essential curl file git
sudo apt install zsh
chsh -s $(which zsh)
sudo apt install git-core curl fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ACTIVATE_LINE_STRING='eval "$(/usr/bin/mise activate zsh)"'
ZSH_FILE=~/.zshrc

if ! grep -qF "$ACTIVATE_LINE_STRING" "$ZSH_FILE"; then
  echo "$ACTIVATE_LINE_STRING" >>"$ZSH_FILE"
fi

exec /bin/zsh
