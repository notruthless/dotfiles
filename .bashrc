# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=

# Don't put duplicate lines in the history.
 export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# export HISTCONTROL=ignoredups:erasedups

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

 alias chrome="open -a 'Google Chrome'"

case `uname` in 
  'Dar'*)
    echo "Loading Mac settings."
    # [[ -f "$HOME/.bash/mac" ]] && source "$HOME/.bash/mac"
  ;;
  'MINGW'*)
    echo 'Loading Windows preferences'
    echo -ne '\e]4;4;#00FFFF\a' # change terminal blue
    export RUBYGITHOOKS_SHEBANG='#!'`which ruby`  # no rvm
    alias irb='irb --noreadline' # so backspace works
    export PATH=$PATH:/utils/console

   # [[ -f "$HOME/.bash/windows" ]] && source "$HOME/.bash/windows"
  ;;
  'CYG'*)
    echo 'Loading Cygwin settings'
    export PATH=$PATH:/d/Cygwin/bin
    echo -ne '\e]4;4;#00FFFF\a' # change terminal blue
    export RUBYGITHOOKS_SHEBANG='#!/usr/bin/env /home/ruth.helfinstein/.rvm/bin/githooks_ruby'
   # [[ -f "$HOME/.bash/mac" ]] && source "$HOME/.bash/linux"
  ;;
  'Linux'*)
    echo 'Loading Linux settings'
    export PATH=$PATH:$HOME/bin
  ;;
esac


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH

# work specific
export RUBYLIB=$HOME/svn-ops/trunk/rubylib/
export PATH=$PATH:$HOME/svn-ops/trunk/scripts
export PATH=$PATH:$HOME/ol_scripts
export JIRA_USER=`id -un`
export JIRA_PASSWORD=`cat ~/.secrets/jira_pwd`
