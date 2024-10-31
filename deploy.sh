#!/bin/bash

# Create backup of existing files
for file in .zshrc .gitignore; do
    if [ -f ~/.$file ]; then
        mv ~/.$file ~/.$file.backup
    fi
done

# Link dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitignore ~/.gitignore

# Copy server-specific config if it doesn't exist
if [ ! -f ~/.zshrc.server ]; then
    cp ~/.dotfiles/.zshrc.server ~/.zshrc.server
fi

# Create secrets file from template if it doesn't exist
if [ ! -f ~/.secrets ]; then
    cp ~/.dotfiles/.secrets.template ~/.secrets
    echo "Don't forget to edit ~/.secrets with your actual secrets!"
fi

echo "Dotfiles deployed! Please:"
echo "1. Edit ~/.zshrc.server for any server-specific configurations"
echo "2. Edit ~/.secrets with your actual secrets"
echo "3. Restart your shell or source ~/.zshrc"
