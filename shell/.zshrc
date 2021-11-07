ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

antigen use oh-my-zsh # Yes, I want to use Oh My ZSH

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

# Do OS dependant stuff
case `uname` in
  Darwin)
    # Commands for macOS go here
    antigen bundle macos
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme ys 

# And lastly, apply the Antigen stuff
antigen apply

# Default editor
export EDITOR=nvim

# Needs to go after antigen
source ~/.aliases 
