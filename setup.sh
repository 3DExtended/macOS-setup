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

brew install node


# optimize charging cycles
brew install battery

cd ~
cd Documents 
mkdir projects
cd projects

ssh-keygen -t ed25519 -C "somemail@example.com"

# clone projects
git clone git@github.com:3DExtended/BookGram.git bookgram
git clone git@github.com:3DExtended/PrivateCookbook.git privateCookbook

mkdir archive 
cd archive

git clone git@github.com:3DExtended/BookGram-Landingpage.git bookgramLandingpage
git clone git@github.com:3DExtended/RPGTableHelper.git rpgTableHelper


git config --global user.email "you@example.com"
git config --global user.name "Your Name"

echo >> /Users/$USER/.zshrc
echo "alias dev='cd ~/Documents/projects'" >> /Users/$USER/.zshrc
source ~/.zshrc

brew install --cask microsoft-office

sudo gem install xcpretty