# To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git@github.com:jeffsaracco/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/ackrc ~/.ackrc
    ln -s ~/.vim/tmux.conf ~/.tmux.conf

Double click on the `Menlo-Powerline.otf` font to install it to get the fancy powerline symbols.

# Make sure you have `ag` installed

    brew install ag

# Install Tmux Plugin Manager

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install plugins from TPM

    tmux
    prefix + I

# Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -
