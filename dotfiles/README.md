# HowTo

## oh-my-zsh
```bash
cp .zshrc ~/.zshrc
sudo apt install zsh python-pip curl fonts-powerline
sudo pip install virtualenvwrapper
./install_zsh_plugins.sh
sudo chsh --shell=$(which zsh) $USER
```

## Tmux
```bash
cp .tmux.conf ~/.tmux.conf
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Run tmux; Prefix + I to install plugins
```

## Vim
```bash
cp .vimrc ~/.vimrc
cp .ctags ~/.ctags

# Install Vundle to manage plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install YCM
sudo apt install build-essential cmake python3-dev
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --go-completer --rust-completer --java-completer

# Python
sudo pip3 install autopep8 flake8 jedi

# Markdown instance preview
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt install nodejs
sudo npm -g install instant-markdown-d

# Rust
rustup toolchain add nightly
cargo +nightly install racer
rustup component add rls-preview rust-analysis rust-src --toolchain nightly

# Go
sudo apt install ctags
go get -u github.com/jstemmer/gotags
go get -u golang.org/x/tools/cmd/gopls

# Latex
sudo apt install pandoc texlive-full
```

## References:
* https://blogs.technet.microsoft.com/jessicadeen/linux/macos-ohmyzsh-tmux-vim-iterm2-powerlevel9k-badass-terminal/
* How to tabularize texts, see more https://github.com/godlygeek/tabular
* How to use tabular auto completion, see https://github.com/ervandew/supertab
* code formatter, see more https://github.com/Chiel92/vim-autoformat