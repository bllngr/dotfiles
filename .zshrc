# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="mrtazz"
ZSH_THEME="kphoen"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# change PATH
export ANDROID_HOME=~/.android-sdk
export ANDROID_SDK=$ANDROID_HOME

export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:~/bin

# Enable comments
setopt interactivecomments
unsetopt correctall
setopt correct

## Aliases
# display the last mount of a device, usually a USB key
alias lsext='dmesg | grep "\[sd" | tail -1'

alias pomodoro='p-timer.sh 25 "Pomodoro" "Pomodoro started, you have 25 minutes left" "Pomodoro ended. Please stop the work and take a short break"'
