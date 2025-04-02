# Ubuntu Development Sprinter

This tool is inspired by and is an alternative to omakub.

Ubuntu Development Sprinter is a collection of centralized bash scripts designed to automate the setup of a development environment on Ubuntu and different flavours. This tool is tailored for Ruby on Rails developers but is versatile enough to be useful for any developer needing a robust and efficient setup.

## Features

- Installs essential applications for Ruby on Rails development
- Sets up the tiling window manager (i3)
- Installs Google Chrome
- Installs Docker
- Installs CascadiaMono fonts
- Sets up the Kitty terminal emulator
- Installs and configures Neovim with LazyVim
- Installs and configures LazyGit and LazyDocker
- Installs GitHub CLI
- Sets up Fastfetch for system info
- Configures Tmux for terminal multiplexing
- Sets up Zsh and Oh-My-Zsh
- Configures Mise as a development environment setup tool for Node and Ruby

## Installation

### Prerequisites

Before running the scripts, make sure you have the following prerequisites:

- Ubuntu installed on your machine
- Basic knowledge of terminal commands
- Sudo privileges

### Getting Started

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/ubuntu-development-sprinter.git
    cd ubuntu-development-sprinter
    ```

2. **Make the scripts executable:**

    ```sh
    chmod +x *.sh
    ```

3. **Run the setup script:**

    ```sh
    ./boot.sh -y
    ```

## Usage

After running the setup script, your development environment will be ready to use with all the necessary tools and configurations.

[Here](https://dev.to/salanoid/the-evolution-of-ruby-version-management-5f1d) you can find an article about ruby version management and a short tutorial about mise.

To install ruby with mise:
```sh
mise use --global ruby@3.3
mise x ruby -- gem install rails --no-document
```

To install node with mise:
```sh
mise use --global node@lts
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](https://opensource.org/license/MIT) file for details.

## Acknowledgements

Thanks to the contributors of the various tools and libraries used in this setup.
