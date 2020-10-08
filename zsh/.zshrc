# p10k theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# z jumper
[[ -r \"/usr/share/z/z.sh\" ]] && source /usr/share/z/z.sh

# tldr
export TLDR_HEADER='magenta bold underline'
export TLDR_QUOTE='italic'
export TLDR_DESCRIPTION='green'
export TLDR_CODE='yellow'
export TLDR_PARAM='red'
# todo add completions some day.. :)

# useful aliases
alias cat="bat"
alias ls="colorls"
alias diff="icdiff"