
# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Download from https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
[[ -f "$HOME/.sh/git-completion.bash" ]] && source "$HOME/.sh/git-completion.bash"
[[ -f "$HOME/.sh/git-override.bash" ]] && source "$HOME/.sh/git-override.bash"

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

export PS1="\w \$(parse_git_branch)\$ "

#export PS1_SET_TITLE='\[\e]0;\u@\h:\w\a\]'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PATH=$PATH:~/railsbricks

export SVN_EDITOR=vim
