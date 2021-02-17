# export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER="/usr/bin/qutebrowser"
setxkbmap -option caps:escape 
#setxkbmap -layout us,de -variant intl -option grp:ctrl_alt_toggle
export PATH=~/.npm-global/bin:$PATH


export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
