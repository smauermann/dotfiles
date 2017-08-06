# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH

exportLC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# general aliases
alias htop="sudo htop"
alias ..="cd .."
alias ntron="ssh stephan@46.101.159.141"
alias ls="ls -Gp"
alias lsa="ls -AF"
alias pr="echo $?"
alias flush="sudo route flush"

# git aliases
alias gs="git status"
alias ga="git add"
alias gpom="git push origin master"

# use macvim instead of sys vim
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# manipulating .bash_profile, .vimrc, ...
alias vbash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias vvim="vim ~/.vimrc"

# python env aliases
alias py_trade="source /Users/Stephan/Desktop/py_trade/py_trade/bin/activate" 
# colored ls output
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# for autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# add all known keys to ssh-agent, thats somehow fucked up in macOS Sierra
ssh-add -A 2>/dev/null;

. ~/.bash_prompt
