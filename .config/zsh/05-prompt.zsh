COLOR_ROOT="%F{red}"
COLOR_USER="%F{cyan}"
COLOR_NORMAL="%F{white}"

setopt PROMPT_SUBST
autoload -Uz colors && colors

# colors for permissions
if [[ "$EUID" -ne "0" ]]
then  # if user is not root
	USER_LEVEL="${COLOR_USER}"
else # root!
	USER_LEVEL="${COLOR_ROOT}"
fi

PROMPT='${USER_LEVEL}[${COLOR_NORMAL}%~${USER_LEVEL}] %f'
