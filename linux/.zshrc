export ZSH="/your/path/to/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh
alias pushrepo="sh /path/to/pusher.sh"
#if you are using a Macbook this will remap command to ctrl for happy fingers :)
#xmodmap /path/to/.xmodmap
echo "Don't be Eval!"
