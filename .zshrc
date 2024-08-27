##############
## DEFAULTS ##
##############

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

#############
## STARTUP ##
#############

clear && pokeget --hide-name Eevee

###########
## ALIAS ##
###########

alias tb=taskbook
