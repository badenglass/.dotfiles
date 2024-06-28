#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fortune

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

alias bare='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
 
bind '"\C-r": "\C-Usource $HOME/.bashrc\n\C-U\C-lneofetch\n"'
bind '"\C-f": "fd --type=dir --max-depth=3 | fzf\n"'

colors() {
	for i in {0..255}; do
		printf "\x1b[38;5;${i}mcolour${i}\n"
	done
}
