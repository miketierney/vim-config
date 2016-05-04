# To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git@github.com:miketierney/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/ackrc ~/.ackrc
    ln -s ~/.vim/tmux.conf ~/.tmux.conf

Double click on the `Menlo-Powerline.otf` font to install it to get the fancy powerline symbols.

# Make sure you have `ag` and `reattach-to-user-namespace` installed (for tmux)

    brew install ag reattach-to-user-namespace

# Make sure you have Node and NPM installed

I prefer [NVM](https://github.com/creationix/nvm)

# Linters/Hinters/other joy

For JavaScript, use eslint:

    npm i -g eslint

For maximum effort, add to that the plugins for React:

    npm i -g eslint babel-eslint eslint-plugin-react

(Other `eslint-plugin-*` packages are available as well, such as angular and lo-dash)

# Install Tmux Plugin Manager

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install plugins from TPM

    tmux
    prefix + I

# Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -
