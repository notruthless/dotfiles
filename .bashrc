
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in the history.
 export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

 alias grep='grep --color'                     # show differences in colour
 alias egrep='egrep --color=auto'              # show differences in colour
 alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
 alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
 alias ll='ls -l'                              # long list
 alias la='ls -A'                              # all but . and ..
 alias l='ls -CF'                              #
 alias ls='ls -hF'

 alias chrome="open -a 'Google Chrome'"

case `uname` in 
  'Dar'*)
    echo "Loading Mac specific stuff."
    # [[ -f "$HOME/.bash/mac" ]] && source "$HOME/.bash/mac"
  ;;
  'MINGW'*)
    echo 'Windows'
    echo -ne '\e]4;4;#00FFFF\a' # change terminal blue
    export RUBYGITHOOKS_SHEBANG='#!'`which ruby`  # no rvm
    alias irb='irb --noreadline' # so backspace works
    export PATH=$PATH:/utils/console

   # [[ -f "$HOME/.bash/windows" ]] && source "$HOME/.bash/windows"
  ;;
  'CYG'*|'Linux'*)
    echo 'Cygwin'
    echo -ne '\e]4;4;#00FFFF\a' # change terminal blue
    export RUBYGITHOOKS_SHEBANG='#!/usr/bin/env /home/ruth.helfinstein/.rvm/bin/githooks_ruby'
   # [[ -f "$HOME/.bash/mac" ]] && source "$HOME/.bash/linux"
  ;;
  'Linux'*)
    echo 'Linux'
    export PATH=$PATH:$HOME/bin
  ;;
esac


export JIRA_USER=`id -un`
export JIRA_PASSWORD=`cat ~/.secrets/jira_pwd`


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#export PATH=$PATH:/d/Cygwin/bin
export PATH=/usr/local/bin:$PATH
alias platform='cd ~/repositories/platform_services/'


