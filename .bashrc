
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

set -o vi
alias vi='vim'
alias c="clear"
alias l="ls -l"
alias ll="ls -al"

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# add git branch name to prompt
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

jwko_shell() {
	export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
	alias vim='vim -u /home/username/.vimrc.jwko'
}
