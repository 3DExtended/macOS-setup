#!/bin/bash


# install xcode and git and prerequisits for brew
xcode-select --install

# download and setup brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /Users/$USER/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# vscode
brew install --cask visual-studio-code


# install flutter for app development
brew install flutter
flutter doctor

# install android studio for android builds
brew install --cask android-studio

brew install --cask docker

brew install --cask dotnet-sdk

# optimize charging cycles
brew install battery

cd ~
cd Documents 
mkdir projects
cd projects
mkdir archive 
cd archive

ssh-keygen -t ed25519 -C "somemail@example.com"

echo >> /Users/$USER/.zshrc
echo "alias dev='cd ~/Documents/projects'" >> /Users/$USER/.zshrc
source ~/.zshrc
