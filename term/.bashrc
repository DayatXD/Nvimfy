export USER=Ayesumit
export HOSTNAME=Galaxy-M10
export HDIR=/sdcard/aye@sumit

export PS1='\[\e[0;32m\]\W\[\e[0m\] \[\e[0;97m\]>\[\e[0m\] '
export PS2="-> "

export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.md=38;5;68:*.log=38;5;68:*.c=38;5;169:*.h=38;5;135:*.o=38;5;97:*.y=38;5;99:*.l=38;5;99:*.sh=38;5;104"
export EXA_COLORS="*.md=38;5;68:*.log=38;5;68:*.c=38;5;169:*.h=38;5;135:*.o=38;5;97:*.y=38;5;99:*.l=38;5;99:*.sh=38;5;104"

#On Startup
sfetch
cd $HDIR
lsd
#eval "$(starship init bash)"

#files and dirs
    alias ls="lsd"
    alias la="lsd -a"
    alias tree="lsd --tree"
    alias rf="rm -rf"
    alias cdr="cd $HDIR"
    alias sd="/sdcard"
    alias home="$HOME"

#Terms
    alias r="bash"
    alias i="apt install"
    alias rem="apt remove"
    alias n="nnn -UxeHDoRuQ"
    alias e="nvim"
    alias py="python3"

#Links
    alias wifi="termux-wifi-enable true && sleep 4 && termux-wifi-scaninfo"
    alias ghub="termux-open-url https://github.io/ayeSpacey"

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

#echo -e "\e[2 q"
#cursor underline
#echo -e "\e[4 q"
#cursor pipe
echo -e "\e[6 q"


