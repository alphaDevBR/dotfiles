#!/bin/bash

## Homebrew Set-up Script
## ======================


# Uncomment this if you don't have Homebrew installed
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# If you haven't already install zsh, then you need to die
# brew install zsh - see dotfiles/zsh


# Set up important taps
# ---------------------

brew tap homebrew/dupes
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions


# Install binaries
# ----------------

brew install git                            # : dotfiles/git
brew install wget
brew install node
brew install nano                           # : dotfiles/nano
brew install curl --with-openssl
brew install vim --override-system-vim      # : dotfiles/vim
brew install macvim
brew install heroku-toolbelt
brew install brew-cask
brew install tor
brew install torsocks
brew install safe-rm
brew install rmtrash
brew install tree
brew install unrar
brew install mysql
brew install imagemagick
brew install archey
brew install z
brew install android-platform-tools


#> External Binaries
brew install karan/karan/gitignore
brew install neovim/neovim/neovim --HEAD
brew install rogual/neovim-dot-app/neovim-dot-app --HEAD



# Install Apps
# ------------

#> Must apps
brew cask install firefoxdeveloperedition
brew cask install google-chrome
brew cask install mpv                       # : dotfiles/osx/mpv
brew cask install utorrent
brew cask install skype
brew cask install jumpshare                 # fuck dropbox
brew cask install teamviewer
brew cask install android-file-transfer
brew cask install nosleep
brew cask install flash
brew cask install spotify

#> Dev Apps
brew cask install sublime-text              # : dotfiles/sublime/2
brew cask install atom
brew cask install java
brew cask install android-studio            # point it to your huge sdk folder
brew cask install postgres

#> Not that important
brew cask install vlc
brew cask install couleurs
brew cask install tunnelbear

#> Maybe
# brew cask install firefox
# brew cask install chromecast
# brew cask install ps3-media-server
# brew cask install lastfm
# brew cask install shiny-groove



# Quick Look Plugins
# ------------------

brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install qlimagesize
brew cask install suspicious-package
brew cask install provisionql
brew cask install qlcolorcode
brew cask install qlstephen



# Link Apps
# ---------

brew linkapps macvim



# Launchd Configuration
# ---------------------

ln -sfv /usr/local/opt/tor/*.plist    ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist  ~/Library/LaunchAgents

launchctl load ~/Library/LaunchAgents/homebrew.mxcl.tor.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist


