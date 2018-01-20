# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
GOPATH=~/go\nexport PATH=$PATH:~/go/bin

# "most" pager for color and more ...
export PAGER="most"

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by defaullt to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		# we have color support; assume it's comliant with Ecma-48
		# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
		# a case would to support  setf rather than setaf.)
		color_prompt=yes
	else
		color_prompt=
	fi
fi


# my crazy-ass colored prompt
if [ "$color_prompt" = yes ]; then
export PS1="[\[\e[37m\]\u\[\e[m\]\[\e[37m\]@\[\e[m\]\[\e[37m\]\h\[\e[m\]][\[\e[33m\]\W\[\e[m\]]:\\$ "	
fi
unset color_prompt force_color_prompt



# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	#alias grep='grep --color=auto'
	#alias fgrep='fgrep --color=auto'
	#alias egrep='egrep --color=auto'
fi


# some more ls aliases
alias ll='ls -l'
alias l='ls -CF'
alias lh='ls -lha'
alias m='man'
alias lsa='ls -AlhF --color=auto'

alias w3d='w3m www.duckduckgo.com'

# Alias definitions.
# You may want to put all your additions into a seperate file like
# ~/.bash_aliases, instead of adding them here directly
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# color scheme for colored man pages

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'




# enable progammable comletion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrd and /etc/profile
# sources /etc/bash.bashrc
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif	[ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

