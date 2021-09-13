export USER=Ayesumit
export HOSTNAME=Galaxy-M10
export HDIR=/sdcard/aye@sumit

export ZSH="/data/data/com.termux/files/.config/omz"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ENABLE_CORRECTION="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

#On Startup
sfetch
cd $HDIR
lsd

#files and dirs
    alias ls="lsd"
    alias la="lsd -a"
    alias tt="lsd --tree"
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

source $ZSH/oh-my-zsh.sh

# HYPHEN_INSENSITIVE="true"
# CASE_SENSITIVE="true"
# DISABLE_UPDATE_PROMPT="true"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
