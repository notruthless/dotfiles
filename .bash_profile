
# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Download from https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
[[ -f "$HOME/.bash/git-completion.bash" ]] && source "$HOME/.bash/git-completion.bash"
[[ -f "$HOME/.bash/git-override.bash" ]] && source "$HOME/.bash/git-override.bash"

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PS1="\w \$(parse_git_branch)\$ "
export PS1

export PS1_SET_TITLE='\[\e]0;\u@\h:\w\a\]'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
