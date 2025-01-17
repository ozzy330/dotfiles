# .bashrc

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
# eval "$(starship init bash)"
export PATH="$PATH:/opt/mssql-tools18/bin"

alias q="exit"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

##################################
# CUSTOM PROMPT

on_ssh() {
	if [ -n "$SSH_CONNECTION" ]; then
		echo "\u@\h"
	fi
}

on_git() {
if [ "$(git rev-parse --is-inside-work-tree)" = "true" ]; then
		branch=$(git rev-parse --abbrev-ref HEAD)
		if [ -n "git status -s" ]; then
			echo $branch*
		fi
			echo $branch 
fi
}

PS1="\W $(on_git)\n$(on_ssh)❯"
##################################
