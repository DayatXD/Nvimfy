export USER=Ayesumit
export HOSTNAME=Galaxy-M10
export HDIR=/sdcard/aye@sumit

export PS1='\[\e[0;32m\]\W\[\e[0m\] \[\e[0;97m\]>\[\e[0m\] '
export PS2="-> "

#On Startup
rxfetch
echo "|$(date | awk '{print $1"day, " $3" " $2}')|                  |AyeSumit|"
echo ""
cd $HDIR
lsd
echo ""

eval "$(starship init bash)"
    
#files and dirs
    alias ls="lsd"
    alias la="lsd -a"
    alias rf="rm -rf"
    alias cdr="cd $HDIR"
    alias sd="/sdcard"
    alias home="$HOME"

#Terms
    alias r="bash"
    alias i="apt install"
    alias rem="apt remove"
    alias n="nnn"
    alias e="nvim"
    alias py="python3"

#Utility
    alias append="echo >>"
    alias play="mpv"
    alias so="termux-reload-settings"
    alias used="ncdu"
    alias size="du -h -x -s -- * | sort -r -h | head -20"
    alias extr="tar xf"
    alias compr="tar -cvf"

#Exits and locks
    alias q="exit"
    alias user="nvim ~/.scripts/login.sh"

source $HOME/.lfvar

#echo -e "\e[2 q"
#cursor underline
#echo -e "\e[4 q"
#cursor pipe
echo -e "\e[6 q"

