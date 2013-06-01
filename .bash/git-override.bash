#!bash
# NOTE: Stolen from http://stackoverflow.com/questions/2500586/setting-git-default-flags-on-commands
# Git supports aliases defined in .gitconfig, but you cannot override Git
# builtins (e.g. "git log") by putting an executable "git-log" somewhere in the
# PATH. Also, git aliases are case-insensitive, but case can be useful to create
# a negated command (gf = grep --files-with-matches; gF = grep
# --files-without-match). As a workaround, translate "X" to "-x".
git()
{
    typeset -r gitAlias="git-$1"
    if 'which' "$gitAlias" >/dev/null 2>&1; then
        shift
        "$gitAlias" "$@"
    elif [[ "$1" =~ [A-Z] ]]; then
        # Translate "X" to "-x" to enable aliases with uppercase letters.
        translatedAlias=$(echo "$1" | sed -e 's/[A-Z]/-\l\0/g')
        shift
        "$(which git)" "$translatedAlias" "$@"
    else
        "$(which git)" "$@"
    fi
}
