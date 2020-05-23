COLOR_ROOT="%F{red}"
COLOR_USER="%F{cyan}"
COLOR_NORMAL="%F{white}"
COLOR_HOSTNAME="%F{blue}"

setopt PROMPT_SUBST
autoload -Uz colors && colors

# colors for permissions
if [[ "$EUID" -ne "0" ]]
then  # if user is not root
	USER_LEVEL="${COLOR_USER}"
else # root!
	USER_LEVEL="${COLOR_ROOT}"
fi

PROMPT='${USER_LEVEL}[${COLOR_HOSTNAME}@%m${COLOR_NORMAL} %~${USER_LEVEL}] %f'
