# .bashrc

EDITOR=/usr/bin/nvim

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH="$PATH:/opt/mssql-tools18/bin"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fzf-tab completion

if [ ! -f ./fzf-bash-completion.sh ]; then
	wget https://raw.githubusercontent.com/lincheney/fzf-tab-completion/refs/heads/master/bash/fzf-bash-completion.sh
fi
source ./fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'

##################################
# ALIASES
alias q="exit"

##################################
# CUSTOM PROMPT

on_ssh() {
	if [ -n "$SSH_CONNECTION" ]; then
		echo "$fg_bwhite\u$fg_cyan@\h "
	fi
}

on_git() {

if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
		branch=$(git rev-parse --abbrev-ref HEAD)
		if [ -n "$(git status -s)" ]; then
			echo "$fg_white$branch*"
		else
			echo "$fg_white$branch"
		fi
fi
}
update_prompt() {
    PS1="$(on_ssh)$fg_blue\w $(on_git)\n$t_bold$fg_green❯ $c_reset"
}
PROMPT_COMMAND=update_prompt
##################################

##################################
# Text
t_bold='\e[1m'
# Colors
c_reset='\e[0m'
# Foreground
fg_black='\e[30m'
fg_red='\e[31m'
fg_green='\e[32m'
fg_yellow='\e[33m'
fg_blue='\e[34m'
fg_magenta='\e[35m'
fg_cyan='\e[36m'
fg_white='\e[37m'

fg_bblack='\e[90m'
fg_bred='\e[91m'
fg_bgreen='\e[92m'
fg_byellow='\e[93m'
fg_bblue='\e[94m'
fg_bmagenta='\e[95m'
fg_bcyan='\e[96m'
fg_bwhite='\e[97m'
# Background
bg_black='\e[40m'
bg_red='\e[41m'
bg_green='\e[42m'
bg_yellow='\e[43m'
bg_blue='\e[44m'
bg_magenta='\e[45m'
bg_cyan='\e[46m'
bg_white='\e[47m'

bg_bblack='\e[100m'
bg_bred='\e[101m'
bg_bgreen='\e[102m'
bg_byellow='\e[103m'
bg_bblue='\e[104m'
bg_bmagenta='\e[105m'
bg_bcyan='\e[106m'
bg_bwhite='\e[107m'
