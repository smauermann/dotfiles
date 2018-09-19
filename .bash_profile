PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# general aliases
alias htop="sudo htop"
alias ..="cd .."
alias ls="ls -Gp"
alias lsa="ls -AF"

# brew update
alias brew_update="brew update; brew upgrade; brew cleanup; brew doctor"

# git aliases
alias g="git"

# use macvim instead of sys vim
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# manipulating .bash_profile, .vimrc, ...
alias vbash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias vvim="vim ~/.vimrc"

# python env aliases
function pyenv() {
    if [ $VIRTUAL_ENV ]; then
        deactivate
    fi
    source /Users/Stephan/projects/python_envs/$1/bin/activate
}

# colored ls output
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

. ~/.bash_prompt
