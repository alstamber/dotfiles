## ENV
export PATH=/usr/local/bin:/usr/bin:/bin
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/sdk/platform-tools:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
export PATH=$PATH:$HOME/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export TERM=xterm-256color
export EDITOR=vim
export MANPATH=$MANPATH:/opt/local/man:/usr/local/share/man
export PYENV_ROOT="$HOME/.pyenv"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if [ -d ${HOME}/node_modules/.bin ]; then
    export PATH=${PATH}:${HOME}/node_modules/.bin
fi

if [ -d ${HOME}/.composer/vendor/bin ]; then
    export PATH=${PATH}:${HOME}/.composer/vendor/bin
fi


## LANG
export LANG=ja_JP.UTF-8


## PROMPT
autoload colors
colors

setopt prompt_subst
setopt transient_rprompt

DEFAULT=$'%{\e[1;0m%}'
RESET="%{${reset_color}%}"
GREEN="%{${fg[green]}%}"
BLUE="%{${fg[blue]}%}"
RED="%{${fg[red]}%}"
CYAN="%{${fg[cyan]}%}"
WHITE="%{${fg[white]}%}"
END="$"

PROMPT='%{$fg_bold[blue]%}${USER}@%m ${RESET}${WHITE}${END} ${RESET}'
RPROMPT='${RESET}${WHITE}[${BLUE}%(5~,%-2~/.../%2~,%~)% ${WHITE}]${RESET}'


## Functions
setopt auto_cd
setopt pushd_ignore_dups
setopt correct
setopt auto_list
setopt magic_equal_subst
setopt brace_ccl
setopt auto_menu
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
setopt multios
setopt noautoremoveslash
setopt nolistbeep
setopt autopushd

bindkey -e


## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt hist_no_store


## Completion
autoload -U compinit
compinit -u


## Aliases
setopt complete_aliases

# ls
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -al"

# vim
alias vi="vim"

# tmux
alias ta="tmux attach"

# git
alias gs="git status"
alias ga="git add"
alias gm="git commit -m"
alias gf="git find"
alias gl="git log"
alias gd="git diff"


# OSX
case "${OSTYPE}" in
darwin*)
    export PATH=$PATH:/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources
    export TEXINPUTS=.//:
    export TEXMFLOCAL=/usr/local/texlive/texmf-local
    export PATH=$PATH:/usr/texbin
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    alias vl="/usr/local/share/vim/vim74/macros/less.sh"
    eval $(gdircolors $HOME/dotfiles/dircolors.256dark)
    alias ls="gls --color=auto"
    if [ -n "$LS_COLORS" ]; then
        zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
    fi
    ;;
esac
