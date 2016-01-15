
 # Set Apple Terminal.app resume directory
 if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
   function chpwd {
     local SEARCH=' '
     local REPLACE='%20'
     local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
     printf '\e]7;%s\a' "$PWD_URL"
   }

   chpwd
 }

 # recommended by brew doctor
 export PATH="/usr/local/bin:$PATH"
 # not using rbenv right now
 # eval "$(rbenv init - --no-rehash zsh)"

 export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited" (only works in bash?)
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
# export HISTFILESIZE=
# export HISTSIZE=
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# Don't put duplicate lines in the history. (doesn't work in zsh)
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

 alias grep='grep --color'                     # show differences in colour
 alias egrep='egrep --color=auto'              # show differences in colour
 alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
 alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
 alias ll='ls -l'                              # long list
 alias la='ls -A'                              # all but . and ..
 alias ls='ls -hF'
 alias history='history 1'

 alias chrome="open -a 'Google Chrome'"
 
 alias gb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(committerdate:relative)%(color:reset))| %(contents:subject) ' | column -t -s '|'"


# from .bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Download from https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
# [[ -f "$HOME/.sh/git-completion.bash" ]] && source "$HOME/.sh/git-completion.bash"
# [[ -f "$HOME/.sh/git-override.bash" ]] && source "$HOME/.sh/git-override.bash"
[[ -f "$HOME/.sh/git-prompt.zsh" ]] && source "$HOME/.sh/git-prompt.zsh"


export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

