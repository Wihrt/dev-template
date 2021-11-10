#!/bin/env bash

# Install brew
export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/user/.bash_profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/user/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# # Install packages
brew install --cask visual-studio-code
brew install python@3.10
brew install go
brew install pipenv
brew install ansible
brew install docker
brew install kubernetes-cli
brew install helm
brew install helmfile
brew install stern
brew install terraform

# Install VSCode Extensions
while read line
do
    code --install-extension $line --force
done < vscode-extensions.txt

