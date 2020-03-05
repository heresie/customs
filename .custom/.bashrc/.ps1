# Some more alias to avoid making mistakes:
RED='\[\033[1;31m\]'
RED_ESC='\001\033[1;31m\002'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
YELLOW_ESC='\001\033[1;33m\002'
BLUE='\[\033[1;34m\]'
PINK='\[\033[1;35m\]'
CYAN='\[\033[1;36m\]'
WHITE='\[\033[1;37m\]'
NC='\[\033[0m\]'
NC_ESC='\001\033[0m\002'
oldtop='\[\033)0\016\]\[\]lq\[\017\033(B\]'
oldbottom='\[\033)0\016\]\[\]mq\[\017\033(B\]'
top='┌'
bot='└'
sep='─'

prompt_k8s(){
  k8s_current_context=$(kubectl config current-context 2> /dev/null)
  if [[ $? -eq 0 ]] ; then echo -e "${RED_ESC}(${YELLOW_ESC}${k8s_current_context}${RED_ESC})${NC_ESC}${sep}"; fi
}

parse_git_branch() {
  is_git=$(git branch 2> /dev/null)
  if [[ $? -eq 0 ]] ; then
    git_current_branch=$(git branch | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    echo -e "${RED_ESC}(${YELLOW_ESC}${git_current_branch}${RED_ESC})${NC_ESC}${sep}"
  fi
}

export PS1="${top}${NC}${sep}${RED}(${CYAN}\d \t${RED})${NC}${sep}${RED}(${GREEN}\u@\H${RED})${NC}${sep}${RED}(${BLUE}\w${RED})${NC}${sep}"'$(parse_git_branch)$(prompt_k8s)'"\n${bot}> $ "
