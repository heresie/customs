# Some more alias to avoid making mistakes:
RED='\[\033[1;31m\]'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[1;34m\]'
PINK='\[\033[1;35m\]'
CYAN='\[\033[1;36m\]'
WHITE='\[\033[1;37m\]'
NC='\[\033[0m\]'
oldtop='\[\033)0\016\]\[\]lq\[\017\033(B\]'
oldbottom='\[\033)0\016\]\[\]mq\[\017\033(B\]'
top='┌'
bot='└'
sep='─'

export PS1="${top}${NC}${sep}${RED}(${CYAN}\d \t${RED})${NC}${sep}${RED}(${GREEN}\u@\H${RED})${NC}${sep}${RED}(${BLUE}\w${RED})${NC}${sep}\n${bot}> $ "
