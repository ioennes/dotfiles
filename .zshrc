##############
## DEFAULTS ##
##############

export XDG_CURRENT_DESKTOP=Hyprland
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
source $ZSH/oh-my-zsh.sh

#############
## PLUGINS ##
#############

plugins=(git)

#############
## EXPORTS ##
#############

export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH

###########
## ALIAS ##
###########

alias tb=taskbook
alias clear='clear && $HOME/./minfetch'

#############
## STARTUP ##
#############

./minfetch
